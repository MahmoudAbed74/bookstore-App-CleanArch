import 'package:bookstore_app_clean_arch/Features/home/data/Model/book_model/book_model.dart';
import 'package:bookstore_app_clean_arch/Features/home/domain/entities/Home_Entities.dart';
import 'package:bookstore_app_clean_arch/Features/home/domain/home%20repo/homeRepo.dart';
import 'package:bookstore_app_clean_arch/core/utils/api_service.dart';

abstract class DataSourceRemote {
  Future<List<HomeEntities>> fetchFeaturedBooks();
  Future<List<HomeEntities>> fetchNewsetBooks();
}

class DataSourceRemoteImplm extends DataSourceRemote {
  final Apiservice apiservice;

  DataSourceRemoteImplm(this.apiservice);

  @override
  Future<List<HomeEntities>> fetchFeaturedBooks() async {
    var data = await apiservice.get(
        endPoint: "volumes?Filtering=free-ebooks&q=subject: food");

    List<BookModel> books = getBooksList(data);
    return books;
  }

  List<BookModel> getBooksList(Map<String, dynamic> data) {
    List<BookModel> books = [];

    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<HomeEntities>> fetchNewsetBooks() async {
    var data = await apiservice.get(
        endPoint:
            "v1/volumes?Filtering=free-ebooks&q=subject: food&Sorting=newest ");
    List<BookModel> books = getBooksList(data);

    return books;
  }
}
