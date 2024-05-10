import 'package:dartz/dartz.dart';
import 'package:malta_taxi/core/core.dart';
import 'package:malta_taxi/data/remote/getSavedCards/models/get_saved_cards_model.dart';

abstract class GetSavedCardsRepo {
  Future<Either<ApiException, GetSavedCardsModel>> getSavedCards();
}