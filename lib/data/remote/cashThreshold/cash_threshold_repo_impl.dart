import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/core/exceptions.dart';
import 'package:malta_taxi/data/remote/cashThreshold/cash_threshold_repo.dart';
import 'package:malta_taxi/data/remote/cashThreshold/models/get_cash_threshold_model.dart';
import 'package:malta_taxi/utils/utils.dart';

class CashThresholdRepoImpl implements CashThresholdRepo {

  @override
  Future<Either<ApiException, GetCashThresholdResponseModel>> getCashThreshold() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/ride/cash-count");
      Logger.printSuccess(response.data.toString());
      return Right(GetCashThresholdResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
