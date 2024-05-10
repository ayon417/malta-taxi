import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/cancel_ride/cancel_ride_repo.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_amount_model.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_model.dart';
import 'package:malta_taxi/utils/utils.dart';

class CancelRideRepoImpl implements CancelRideRepo {
  @override
  Future<Either<ApiException, CancelRideResponse>> cancelRide(CancelRideRequest cancelRideRequest) async {
    try {
      final Response response =
          await ApiClient().patch("${AppConstants.baseUrl}users/cancel/ride", cancelRideRequest.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(CancelRideResponse.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CancelRideAmountModelRes>> cancelRideAmount(CancelRideAmountModelRer cancelRideAmountModelReq) async {
    try {
      final Response response = await ApiClient().post("${AppConstants.baseUrl}/users/cancel/ride/amount", cancelRideAmountModelReq.toJson());
      Logger.printSuccess(response.data.toString());
      return Right(CancelRideAmountModelRes.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
