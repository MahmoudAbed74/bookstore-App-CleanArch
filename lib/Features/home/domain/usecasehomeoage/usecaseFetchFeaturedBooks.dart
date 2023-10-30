import 'package:bookstore_app_clean_arch/Features/home/domain/entities/Home_Entities.dart';
import 'package:bookstore_app_clean_arch/Features/home/domain/home%20repo/homeRepo.dart';
import 'package:bookstore_app_clean_arch/core/Usecase/usecase.dart';
import 'package:bookstore_app_clean_arch/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

class UseCaseFetchFeaturedBooks extends UseCase<List<HomeEntities>, NoParam> {
  final HomeRepo homeRepo;

  UseCaseFetchFeaturedBooks(this.homeRepo);

  @override
  Future<Either<Failure, List<HomeEntities>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}

class NoParam {}
