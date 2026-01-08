import 'package:cat_breeds/core/database/database_key_service.dart';
import 'package:cat_breeds/core/storage/secure_storage_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSecureStorageService extends Mock implements SecureStorageService {}

void main() {
  late DatabaseKeyServiceImpl keyService;
  late MockSecureStorageService mockSecureStorage;
  const String keyName = 'database_encryption_key';

  setUp(() {
    mockSecureStorage = MockSecureStorageService();
    keyService = DatabaseKeyServiceImpl(mockSecureStorage);
  });

  group('DatabaseKeyServiceImpl', () {
    test(
      'getDatabaseKey should return existing key if found in storage',
      () async {
        // arrange
        const existingKey = 'existing_key';
        when(
          () => mockSecureStorage.read(key: keyName),
        ).thenAnswer((_) async => existingKey);

        // act
        final result = await keyService.getDatabaseKey();

        // assert
        expect(result, existingKey);
        verify(() => mockSecureStorage.read(key: keyName)).called(1);
        verifyNever(
          () => mockSecureStorage.write(
            key: any(named: 'key'),
            value: any(named: 'value'),
          ),
        );
      },
    );

    test(
      'getDatabaseKey should generate and save new key if not found in storage',
      () async {
        // arrange
        when(
          () => mockSecureStorage.read(key: keyName),
        ).thenAnswer((_) async => null);
        when(
          () => mockSecureStorage.write(
            key: keyName,
            value: any(named: 'value'),
          ),
        ).thenAnswer((_) async {});

        // act
        final result = await keyService.getDatabaseKey();

        // assert
        expect(result, isNotNull);
        expect(result, isNotEmpty);
        verify(() => mockSecureStorage.read(key: keyName)).called(1);
        verify(
          () => mockSecureStorage.write(key: keyName, value: result),
        ).called(1);
      },
    );

    test(
      'getDatabaseKey should generate and save new key if found key is empty',
      () async {
        // arrange
        when(
          () => mockSecureStorage.read(key: keyName),
        ).thenAnswer((_) async => '');
        when(
          () => mockSecureStorage.write(
            key: keyName,
            value: any(named: 'value'),
          ),
        ).thenAnswer((_) async {});

        // act
        final result = await keyService.getDatabaseKey();

        // assert
        expect(result, isNotNull);
        expect(result, isNotEmpty);
        verify(() => mockSecureStorage.read(key: keyName)).called(1);
        verify(
          () => mockSecureStorage.write(key: keyName, value: result),
        ).called(1);
      },
    );
  });
}
