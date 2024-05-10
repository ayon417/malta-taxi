import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/api_client.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/core/exceptions.dart';
import 'package:malta_taxi/data/remote/createPayment/create_payment_repo.dart';
import 'package:malta_taxi/data/remote/createPayment/models/create_payment_model.dart';
import 'package:malta_taxi/utils/logger.dart';

class CreatePaymentRepoImpl implements CreatePaymentRepo {

  @override
  Future<Either<ApiException, CreatePaymentResponseModel>> createPayment(CreatePaymentRequestModel createPaymentRequestModel) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ride/payment/create", createPaymentRequestModel.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(CreatePaymentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}