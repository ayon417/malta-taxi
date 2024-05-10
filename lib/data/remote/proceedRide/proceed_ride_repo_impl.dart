import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/proceedRide/models/proceed_ride_model.dart';
import 'package:malta_taxi/data/remote/proceedRide/proceed_ride_repo.dart';
import 'package:malta_taxi/utils/utils.dart';

class ProceedRideRepoImpl implements ProceedRideRepo {

  @override
  Future<Either<ApiException, ProceedRideResponseModel>> proceedRide(ProceedRideRequestModel proceedRideRequestModel) async {
    try {
      Logger.printWarning(proceedRideRequestModel.toJson().toString());
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/proceed-ride", proceedRideRequestModel.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(ProceedRideResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}