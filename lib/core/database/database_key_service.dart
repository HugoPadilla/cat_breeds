import 'dart:convert';
import 'dart:math';

import 'package:cat_breeds/core/storage/secure_storage_service.dart';
import 'package:injectable/injectable.dart';

abstract class DatabaseKeyService {
  Future<String> getDatabaseKey();
}

@LazySingleton(as: DatabaseKeyService)
class DatabaseKeyServiceImpl implements DatabaseKeyService {
  final SecureStorageService _secureStorage;
  static const String _keyName = 'database_encryption_key';

  DatabaseKeyServiceImpl(this._secureStorage);

  @override
  Future<String> getDatabaseKey() async {
    // Check if key exists
    final String? existingKey = await _secureStorage.read(key: _keyName);

    if (existingKey != null && existingKey.isNotEmpty) {
      return existingKey;
    }

    final String newKey = _generateSecureKey();
    await _secureStorage.write(key: _keyName, value: newKey);

    return newKey;
  }

  String _generateSecureKey() {
    final Random random = Random.secure();
    // Generate 32 bytes of entropy (256 bits)
    final List<int> values = List<int>.generate(
      32,
      (int i) => random.nextInt(256),
    );
    return base64Url.encode(values);
  }
}
