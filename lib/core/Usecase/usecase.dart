import 'package:bookstore_app_clean_arch/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}
