import 'package:fpdart/fpdart.dart';
import 'package:tdd_clean_architecture/core/errors/erros.dart';
import 'package:tdd_clean_architecture/features/domain/entities/weight_drink.dart';

abstract class WeightDrinkRepository {
  Future<Either<WeightDrinkException, WeightDrink>> getWeightDrink();
  Future<Either<WeightDrinkException, WeightDrink>> getWeightDrinkExecption(String message);
}
