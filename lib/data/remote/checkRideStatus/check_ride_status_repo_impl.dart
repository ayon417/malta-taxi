import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/checkRideStatus/check_ride_status_repo.dart';
import 'package:malta_taxi/data/remote/checkRideStatus/models/check_ride_status_model.dart';
import 'package:malta_taxi/utils/utils.dart';

class CheckRideStatusRepoImpl implements CheckRideStatusRepo {

  @override
  Future<Either<ApiException, CheckRideStatusResponseModel>> checkRideStatus() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/ride/status");
      Logger.printSuccess(response.data.toString());
      return Right(CheckRideStatusResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}