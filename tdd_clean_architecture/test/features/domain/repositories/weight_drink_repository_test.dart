import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_clean_architecture/core/errors/erros.dart';
import 'package:tdd_clean_architecture/features/domain/entities/weight_drink.dart';
import 'package:tdd_clean_architecture/features/domain/repositories/weight_drink_repository.dart';
import 'package:tdd_clean_architecture/features/domain/usecase/get_weight_drink.dart';

class MockWeightDrinkRepository extends Mock implements WeightDrinkRepository {}

void main() {
  late GetWeightDrink usecase;
  late MockWeightDrinkRepository repository;

  setUp(() {
    repository = MockWeightDrinkRepository();
    usecase = GetWeightDrink(repository);
  });

  final tWeightDrink = WeightDrink(
    quantDoses: 12,
    pesoBruto: 1200,
    tara: 487.5,
    pesoGrfAberta: 660,
  );

  test('deve retornar a entidade weightdrink', () async {
    //arrange
    when(() => repository.getWeightDrink())
        .thenAnswer((_) async => Right(tWeightDrink));
    //act
    final result = await usecase();
    //assert
    expect(result, Right(tWeightDrink));

  });

    test('deve retornar o número de doses', () async {
    //arrange
    when(() => repository.getWeightDrink())
        .thenAnswer((_) async => Right(tWeightDrink));
    //act
    final result = await usecase();
    //assert
    expect(result, Right(tWeightDrink));
    expect(tWeightDrink.calculate(),'2.9');

  });



}
