import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/searchRide/models/popular_destination_model.dart';
import 'package:malta_taxi/data/remote/searchRide/models/search_ride_model.dart';

abstract class SearchRideRepo {
  Future<Either<ApiException, SearchRideResponseModel>> searchRide(
    SearchRideRequestModel searchRideRequestModel,
  );
  Future<Either<ApiException, PopularDestinationResponse>> popularDestination();
}
