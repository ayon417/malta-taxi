import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/createPayment/models/create_payment_model.dart';

abstract class CreatePaymentRepo {
  Future<Either<ApiException, CreatePaymentResponseModel>> createPayment(CreatePaymentRequestModel createPaymentRequestModel);
}