import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_clean_architecture/core/errors/erros.dart';
import 'package:tdd_clean_architecture/features/domain/repositories/validation.repository.dart';
import 'package:tdd_clean_architecture/features/domain/usecase/get_validaton_drink.dart';

class MockValidationRepository extends Mock implements ValidationRepository {}

void main() {
  GetValidatonDrink usecase;
  late MockValidationRepository mockValidationRepository;

  setUp(() {
    usecase = GetValidatonDrink(mockValidationRepository);
    mockValidationRepository = MockValidationRepository();
  });

  test('deve dar erro  ', () async {
    when(() => mockValidationRepository.getValidation())
        .thenAnswer((_) async => Left(WeightDrinkException('Error')));
  });
}
