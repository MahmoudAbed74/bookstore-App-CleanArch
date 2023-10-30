import 'package:bookstore_app_clean_arch/Features/home/domain/entities/Home_Entities.dart';
import 'package:bookstore_app_clean_arch/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HomeEntities>>> fetchFeaturedBooks();
  Future<Either<Failure, List<HomeEntities>>> fetchNewsetBooks();
}
