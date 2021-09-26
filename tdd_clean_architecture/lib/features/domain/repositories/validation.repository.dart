import 'package:fpdart/fpdart.dart';
import 'package:tdd_clean_architecture/core/errors/erros.dart';
import 'package:tdd_clean_architecture/features/domain/entities/weight_drink.dart';

abstract class ValidationRepository {
  Future<Either<WeightDrinkException, WeightDrink>> getValidation();
}


