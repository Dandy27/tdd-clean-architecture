import 'package:fpdart/fpdart.dart';
import 'package:tdd_clean_architecture/core/errors/erros.dart';
import 'package:tdd_clean_architecture/features/domain/entities/weight_drink.dart';
import 'package:tdd_clean_architecture/features/domain/repositories/weight_drink_repository.dart';

class GetWeightDrink {
  final WeightDrinkRepository repository;

  GetWeightDrink(this.repository);
  Future<Either<WeightDrinkException, WeightDrink>> call() {
    return repository.getWeightDrink();
  }
}
