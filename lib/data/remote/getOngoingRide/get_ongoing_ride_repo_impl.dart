import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/getOngoingRide/get_ongoing_ride_repo.dart';
import 'package:malta_taxi/data/remote/getOngoingRide/models/get_ongoing_ride_model.dart';
import 'package:malta_taxi/utils/utils.dart';

class GetOngoingRideRepoImpl implements GetOngoingRideRepo {

  @override
  Future<Either<ApiException, GetOngoingRideResponseModel>> getOngoingRide(GetOngoingRideRequestModel getOngoingRideRequestModel) async {
    Logger.printWarning(getOngoingRideRequestModel.toString());
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}users/ongoing/ride", getOngoingRideRequestModel.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(GetOngoingRideResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}