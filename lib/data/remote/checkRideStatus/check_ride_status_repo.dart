import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/checkRideStatus/models/check_ride_status_model.dart';

abstract class CheckRideStatusRepo {
  Future<Either<ApiException, CheckRideStatusResponseModel>> checkRideStatus();
}