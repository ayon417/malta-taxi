import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/pastRides/models/past_rides_model.dart';

abstract class PastRidesRepo {
  Future<Either<ApiException, PastRidesResponseModel>> getPastRides();
}