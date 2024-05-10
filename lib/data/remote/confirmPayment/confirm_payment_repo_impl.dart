import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/api_client.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/core/exceptions.dart';
import 'package:malta_taxi/data/remote/confirmPayment/confirm_payment_repo.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/change_paymentmethod.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/confirm_payment_model.dart';
import 'package:malta_taxi/utils/logger.dart';

class ConfirmPaymentRepoImpl implements ConfirmPaymentRepo {

  @override
  Future<Either<ApiException, ConfirmPaymentModel>> confirmPayment(String transactionId) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ride/payment/confirm", {"transactionId": transactionId});
      Logger.printSuccess(response.data.toString());
      return Right(ConfirmPaymentModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ChangePaymentMethodRes>> changePaymentMethod(ChangePaymentMethodReq changePaymentMethodRes) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ride/payment/method", changePaymentMethodRes.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(ChangePaymentMethodRes.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}