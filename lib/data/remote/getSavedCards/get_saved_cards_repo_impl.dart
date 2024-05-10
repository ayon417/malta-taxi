import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:malta_taxi/core/api_client.dart';
import 'package:malta_taxi/core/constants.dart';
import 'package:malta_taxi/core/exceptions.dart';
import 'package:malta_taxi/data/remote/getSavedCards/get_saved_cards_repo.dart';
import 'package:malta_taxi/data/remote/getSavedCards/models/get_saved_cards_model.dart';
import 'package:malta_taxi/utils/logger.dart';

class GetSavedCardsRepoImpl implements GetSavedCardsRepo {

  @override
  Future<Either<ApiException, GetSavedCardsModel>> getSavedCards() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/ride/payment/save-card/list");
      Logger.printSuccess(response.data.toString());
      return Right(GetSavedCardsModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}