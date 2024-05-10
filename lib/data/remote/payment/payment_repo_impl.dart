import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_details_model.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_model.dart';
import 'package:malta_taxi/data/remote/payment/payment_repo.dart';
import 'package:malta_taxi/utils/utils.dart';

class PaymentRepoImpl implements PaymentRepo {

  @override
  Future<Either<ApiException, PaymentResponseModel>> getPaymentLink(PaymentRequestModel paymentRequestModel) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ride/payment", paymentRequestModel.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(PaymentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PaymentDetailsResponseModel>> getPaymentDetails(PaymentDetailsRequestModel paymentDetailsRequestModel) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ride/payment-details", paymentDetailsRequestModel.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(PaymentDetailsResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}