import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_details_model.dart';
import 'package:malta_taxi/data/remote/payment/models/payment_model.dart';

abstract class PaymentRepo {
  Future<Either<ApiException, PaymentResponseModel>> getPaymentLink(PaymentRequestModel paymentRequestModel);
  Future<Either<ApiException, PaymentDetailsResponseModel>> getPaymentDetails(PaymentDetailsRequestModel paymentDetailsRequestModel);
}