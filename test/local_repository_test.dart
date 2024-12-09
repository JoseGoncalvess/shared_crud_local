import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_crud_local/repository/local_repository.dart';
import 'package:shared_crud_local/shared/result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  late LocalRepository _localRepository;

  setUp(() async {
    _localRepository = LocalRepository();
    await Future.delayed(const Duration(milliseconds: 100));
  });
  group("Testes com Objetos", () {
    test('Saved object', () async {
      await Future.delayed(const Duration(milliseconds: 100));
      Result? result =
          await _localRepository.save('{"nome":"Muro","idade":"68"}');
      expect(result!.sucess, "Entinty Savo com Sucesso");
      expect(result.failure, null);
    });

    test('Load object', () async {
      await _localRepository.save('{"nome":"Muro","idade":"68"}');
      await Future.delayed(const Duration(milliseconds: 100));
      Result? result = await _localRepository.load();
      expect(result.sucess, '{"nome":"Muro","idade":"68"}');
      expect(result.failure, null);
    });
  });

  test('Delete object', () async {
    await _localRepository.save('{"nome":"Muro","idade":"68"}');
    await Future.delayed(const Duration(milliseconds: 100));
    bool result = await _localRepository.delete();
    expect(result, true);
  });

  test('Atualizar object', () async {
    await _localRepository.save('{"nome":"Muro","idade":"68"}');
    await Future.delayed(const Duration(milliseconds: 100));
    await _localRepository.put('{"nome":"Higor","idade":"25"}');
    Result? result = await _localRepository.load();
    expect(result.sucess, '{"nome":"Higor","idade":"25"}');
  });
}
