import 'dart:async';

import 'package:flutter/material.dart';
import 'package:malta_taxi/data/remote/auth/models/login_model.dart';
import 'package:malta_taxi/data/remote/auth/models/otp_verification_model.dart';
import 'package:malta_taxi/utils/custom_button.dart';
import 'package:malta_taxi/utils/location_search/location_serach.dart';
import 'package:malta_taxi/utils/utils.dart';
import 'package:malta_taxi/view/screens/auth/login/login_view_model.dart';
import 'package:malta_taxi/view/screens/auth/otpVerify/otp_verify_view_model.dart';
import 'package:malta_taxi/view/screens/bottomNavigation/trip/location_picker/location_picker_view_model.dart';
import 'package:malta_taxi/view/screens/splash/splash_view_model.dart';
import 'package:pinput/pinput.dart';

class OTPVerifyView extends ConsumerStatefulWidget {
  final String phoneNumber;
  const OTPVerifyView(this.phoneNumber, {super.key});

  @override
  ConsumerState<OTPVerifyView> createState() => _OTPVerifyViewState();
}

class _OTPVerifyViewState extends ConsumerState<OTPVerifyView>
    with BaseScreenView {
  late OtpVerifyViewModel _viewModel;
  final _formKey = GlobalKey<FormState>();

  bool isResend = true;
  int remainingSecond = 120;
  String? pinCode;
  late Timer _timer; 

  @override
  void initState() {
    _viewModel = ref.read(otpVerifyViewModel)..attachView(this);
    startTimer();
    super.initState();
  }



void startTimer() {
    remainingSecond = 120; // Reset the timer
    isResend = false;


    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (remainingSecond == 0) {
        setState(() {
          isResend = true; // Enable the resend button
          timer.cancel();
        });
      } else {
        setState(() {
          remainingSecond--;
        });
      }
    });
  }


  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer
    super.dispose();
  }

  void resendTimmer() {
    isResend = false;
    setState(() {});
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (remainingSecond == 0) {
         remainingSecond = 120;
        isResend = true;
        setState(() {});
        timer.cancel();
      } else {
        isResend = false;
        remainingSecond--;
        setState(() {});
      }
    });
  }

  // otp verification function

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(otpVerifyViewModel);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 105.h,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 30.h,
          ),
          child: CustomButton(
            loaderColor: kWhite,
            isLoading: _viewModel.isOtpLoading,
            buttonColor: primaryColor,
            textColor: Colors.white,
            buttonText: LocaleKeys.continueText.tr(),
            ontap: () {
              if (!_formKey.currentState!.validate()) {
                showSnackbar('Please enter valid otp');
                return;
              } else {
                _viewModel.otpVerificationRequest = OtpVerificationRequest(
                  mobile: widget.phoneNumber,
                  otp: pinCode,
                );
                _viewModel.verifyOtp(_viewModel.otpVerificationRequest).then(
                      (value) => {   
                      ref.watch(locationPickerViewModelProvider).setUserCurrentLocation().then((valueu) {
                      PlaceSearch().fetchLocationSuggestions(ref.watch(locationPickerViewModelProvider).getUserCurrentLocationAddress).then((valuex) {
                     //  ref.watch(locationPickerViewModelProvider).setLocationSuggestion(valuex);
                      });
                    }),
                    ref.read(splashViewModelProvider).getUserDetails(shouldNavigate:false),
                    ref.read(locationPickerViewModelProvider).popularDestination(),
                     },);
              }
            },
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 1,
        title: Text(
          LocaleKeys.otpVerification.tr(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          gapH24,
          Text(
            LocaleKeys.verificationCodeSentTo.tr(),
            style: TextStyle(
              color: const Color(0xFF8B8B8B),
              fontSize: 12.sp,
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.28,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+${widget.phoneNumber}',
                style: TextStyle(
                  color: const Color(0xFF04030D),
                  fontSize: 12.sp,
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w500,
                  height: 0,
                  letterSpacing: -0.28,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                    color: const Color(0xFFD90C02),
                    fontSize: 12.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.28,
                  ),
                ),
              ),
            ],
          ),
          gapH24,
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Pinput(
                autofocus: true,
                androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                autofillHints: const [AutofillHints.oneTimeCode],
                length: 6,
                defaultPinTheme: defaultPinTheme,
                onChanged: (value) {
                  pinCode = value;
                  setState(() {});
                },
                validator: (s) {
                  return s!.length == 6 ? null : 'Pin is incorrect';
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  isResend ? "" : '$remainingSecond Sec',
                  style: TextStyle(
                    color: const Color(0xFFD90C02),
                    fontSize: 12.sp,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.28,
                  ),
                ),
                TextButton(
                  onPressed: isResend
                      ? () {
                          ref.watch(loginViewModel).resendOtpCode(
                                LoginRequest(
                                  mobile: widget.phoneNumber,
                                  role: 'user',
                                ),
                              ).then((value) =>  resendTimmer());
                          // resendTimmer();
                        }
                      : null,
                  child: Text(
                    LocaleKeys.resend.tr(),
                    style: TextStyle(
                      color: isResend ? primaryColor : const Color(0xFF9F9F9F),
                      fontSize: 12.sp,
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: 56.w,
    height: 56.w,
    textStyle: const TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(4),
    ),
  );

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        showCloseIcon: true,
        content: Text(message),
        backgroundColor: color ?? Colors.black,
      ),
    );
  }
}
