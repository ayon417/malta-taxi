import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/searchRide/models/popular_destination_model.dart';
import 'package:malta_taxi/data/remote/searchRide/models/search_ride_model.dart';
import 'package:malta_taxi/data/remote/searchRide/search_ride_repo.dart';
import 'package:malta_taxi/utils/utils.dart';

class SearchRideRepoImpl implements SearchRideRepo {
  @override
  Future<Either<ApiException, SearchRideResponseModel>> searchRide(
    SearchRideRequestModel searchRideRequestModel,
  ) async {
    try {
      final Response response = await ApiClient().post(
        "${AppConstants.baseUrl}users/search-ride",
        searchRideRequestModel.toJson(),
      );

      if(response.statusCode == 401) {
        return Right(SearchRideResponseModel.fromJson(response.data));
      }

      Logger.printSuccess(response.data.toString());      

      return Right(SearchRideResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PopularDestinationResponse>>
      popularDestination() async {
    try {
      final Response response = await ApiClient()
          .get("${AppConstants.baseUrl}users/ride/popular-place");
      Logger.printSuccess(response.data.toString());
      return Right(PopularDestinationResponse.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
