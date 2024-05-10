import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:malta_taxi/data/remote/confirmPayment/confirm_payment_repo_impl.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/confirm_payment_model.dart';
import 'package:malta_taxi/data/remote/createPayment/create_payment_repo_impl.dart';
import 'package:malta_taxi/data/remote/createPayment/models/create_payment_model.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_details_model.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_model.dart';
import 'package:malta_taxi/data/remote/payment/payment_repo_impl.dart';
import 'package:malta_taxi/helpers/base_view_model.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/payment/payment_web_view.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/trip_confirmed/trip_confirmed_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


final tripCompletedViewModelProvider =
    ChangeNotifierProvider((ref) => TripCompletedViewModel(ref: ref));

class TripCompletedViewModel extends BaseViewModel<BaseScreenView> {

  Ref ref;
  TripCompletedViewModel({required this.ref});

  final PaymentRepoImpl _paymentRepoImpl = PaymentRepoImpl();
  final CreatePaymentRepoImpl _createPaymentRepoImpl = CreatePaymentRepoImpl();
  final ConfirmPaymentRepoImpl _confirmPaymentRepoImpl = ConfirmPaymentRepoImpl();

  final RefreshController _tripCompletedRefreshController = RefreshController();
  RefreshController get tripCompletedRefreshController => _tripCompletedRefreshController;

  PaymentResponseModel _paymentResponseModel = const PaymentResponseModel();
  PaymentResponseModel get paymentResponseModel => _paymentResponseModel;

  PaymentDetailsResponseModel _paymentDetailsResponseModel = const PaymentDetailsResponseModel();
  PaymentDetailsResponseModel get paymentDetailsResponseModel => _paymentDetailsResponseModel;

  CreatePaymentResponseModel _createPaymentResponseModel = const CreatePaymentResponseModel();
  CreatePaymentResponseModel get createPaymentResponseModel => _createPaymentResponseModel;

  ConfirmPaymentModel _confirmPaymentModel = const ConfirmPaymentModel();
  ConfirmPaymentModel get confirmPaymentModel => _confirmPaymentModel;


  bool _paymentDetailsLoading = false;
  bool get paymentDetailsLoading => _paymentDetailsLoading;


  Future<void> getPaymentLink(BuildContext context, PaymentRequestModel paymentRequestModel) async {
    toggleLoading();
    _paymentRepoImpl.getPaymentLink(paymentRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          _paymentResponseModel = r;
          notifyListeners();

          Navigator.push(context, MaterialPageRoute(builder: (_) => PaymentWebView(paymentUrl: r.paymentLink ?? ""))).then((value) {
            showDialog(
                context: context, 
                builder: (context) {
                  return AlertDialog(
                    content: SizedBox(
                      height: 400,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Column(
                        children: [
                          Lottie.asset("assets/animations/success_card_payment.json", repeat: false),
                          gapH8,
                          const Text("Payment Successful"),
                          gapH8,
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.goNamed(AppRoute.bottomNavigationView.name);
                            },
                            color: Colors.green,
                            child: const Text("Ok"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
          });
        }
      );
    });
  }


  Future<void> getPaymentDetails(PaymentDetailsRequestModel paymentDetailsRequestModel) async {
    _paymentDetailsLoading = true;
    notifyListeners();
    _paymentRepoImpl.getPaymentDetails(paymentDetailsRequestModel).then((value) {
      _paymentDetailsLoading = false;
      notifyListeners();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          _paymentDetailsResponseModel = r;
          Logger.printSuccess("PAYMENT DETAILS =====> $r");
          ref.read(locationPickerViewModelProvider).clearSearchResponseData();
          notifyListeners();
        }
      );
    });
  }


  Future<void> createPayment(BuildContext context, CreatePaymentRequestModel createPaymentRequestModel) async {
    toggleLoading();
    _createPaymentRepoImpl.createPayment(createPaymentRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _createPaymentResponseModel = r;
          notifyListeners();

          Logger.printSuccess(r.toString());          

          _confirmPaymentRepoImpl.confirmPayment(r.data?.transactionId ?? "").then((val) {
            toggleLoading();
            return val.fold(
              (l) => Logger.printError(l.message), 
              (r) {
                _confirmPaymentModel = r;
                Logger.printSuccess(r.toString());

                ref.watch(tripConfirmedViewModelProvider).clearResponseModels();

                // Navigator.pop(context);
                context.goNamed(AppRoute.bottomNavigationView.name);
              }
            );
          });
        }
      );
    });
  }

  
}
