import 'package:cat_breeds/core/storage/secure_storage_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late SecureStorageServiceImpl storageService;
  late MockFlutterSecureStorage mockStorage;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    storageService = SecureStorageServiceImpl(mockStorage);
  });

  group('SecureStorageServiceImpl', () {
    const tKey = 'key';
    const tValue = 'value';

    test('read should return value from secure storage', () async {
      // arrange
      when(() => mockStorage.read(key: tKey)).thenAnswer((_) async => tValue);

      // act
      final result = await storageService.read(key: tKey);

      // assert
      expect(result, tValue);
      verify(() => mockStorage.read(key: tKey)).called(1);
    });

    test('write should save value to secure storage', () async {
      // arrange
      when(
        () => mockStorage.write(key: tKey, value: tValue),
      ).thenAnswer((_) async {});

      // act
      await storageService.write(key: tKey, value: tValue);

      // assert
      verify(() => mockStorage.write(key: tKey, value: tValue)).called(1);
    });

    test('delete should remove value from secure storage', () async {
      // arrange
      when(() => mockStorage.delete(key: tKey)).thenAnswer((_) async {});

      // act
      await storageService.delete(key: tKey);

      // assert
      verify(() => mockStorage.delete(key: tKey)).called(1);
    });
  });
}
