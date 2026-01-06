import 'package:equatable/equatable.dart';

abstract class ApiFailure extends Equatable {
  final String message;

  const ApiFailure(this.message);

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends ApiFailure {
  const ServerFailure(super.message);
}

class NetworkFailure extends ApiFailure {
  const NetworkFailure(super.message);
}

class UnknownFailure extends ApiFailure {
  const UnknownFailure(super.message);
}
