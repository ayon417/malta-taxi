import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/change_paymentmethod.dart';
import 'package:malta_taxi/data/remote/confirmPayment/models/confirm_payment_model.dart';

abstract class ConfirmPaymentRepo {
  Future<Either<ApiException, ConfirmPaymentModel>> confirmPayment(String transactionId);
  Future<Either<ApiException, ChangePaymentMethodRes>> changePaymentMethod(ChangePaymentMethodReq changePaymentMethodRes);
}