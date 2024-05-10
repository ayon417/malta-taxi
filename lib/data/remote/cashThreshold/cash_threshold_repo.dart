import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/cashThreshold/models/get_cash_threshold_model.dart';

abstract class CashThresholdRepo {
  Future<Either<ApiException, GetCashThresholdResponseModel>> getCashThreshold();
}
