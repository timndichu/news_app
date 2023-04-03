import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../core.dart';

// This is the base class for the usecase
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// This is the base class for the usecase with no params
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
