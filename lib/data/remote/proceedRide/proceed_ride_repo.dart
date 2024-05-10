import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/proceedRide/models/proceed_ride_model.dart';

abstract class ProceedRideRepo {
  Future<Either<ApiException, ProceedRideResponseModel>> proceedRide(ProceedRideRequestModel proceedRideRequestModel);
}