import 'package:bookstore_app_clean_arch/Features/home/domain/entities/Home_Entities.dart';
import 'package:bookstore_app_clean_arch/Features/home/domain/home%20repo/homeRepo.dart';
import 'package:bookstore_app_clean_arch/core/Usecase/usecase.dart';
import 'package:bookstore_app_clean_arch/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

class UseCaseNewsetBooks extends UseCase<List<HomeEntities>, NoParam> {
  final HomeRepo homeRepo;

  UseCaseNewsetBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<HomeEntities>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewsetBooks();
  }
}

class NoParam {}
