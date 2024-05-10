import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/pastRides/models/past_rides_model.dart';
import 'package:malta_taxi/data/remote/pastRides/past_rides_repo.dart';
import 'package:malta_taxi/utils/logger.dart';

class PastRidesRepoImpl implements PastRidesRepo {

  @override
  Future<Either<ApiException, PastRidesResponseModel>> getPastRides() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/all/ride");
      Logger.printSuccess(response.data.toString());
      return Right(PastRidesResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}