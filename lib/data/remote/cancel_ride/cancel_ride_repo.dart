import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_amount_model.dart';
import 'package:malta_taxi/data/remote/cancel_ride/model/cancel_ride_model.dart';

abstract class CancelRideRepo {
  Future<Either<ApiException, CancelRideResponse>> cancelRide(CancelRideRequest cancelRideRequest);
  Future<Either<ApiException, CancelRideAmountModelRes>> cancelRideAmount(CancelRideAmountModelRer cancelRideAmountModelReq);  
}
