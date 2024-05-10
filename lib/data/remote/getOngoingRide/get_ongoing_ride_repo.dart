import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/getOngoingRide/models/get_ongoing_ride_model.dart';

abstract class GetOngoingRideRepo {
  Future<Either<ApiException, GetOngoingRideResponseModel>> getOngoingRide(GetOngoingRideRequestModel getOngoingRideRequestModel);
}