import 'package:dio/dio.dart';

import '../../../core/core.dart';
import '../../models/news_model.dart';

// This is the abstract class for the remote data source
abstract class NewsRemoteDataSource {
  // This method is used to get the news from the API
  Future<NewsModel> getNewGlobal({
    required bool isHeadlines,
    String? category,
    String? query,
    int? limit,
    int? page,
  });
}

// This is the implementation of the remote data source
class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final NetworkContainer http;

  NewsRemoteDataSourceImpl({
    required this.http,
  });

  @override
  Future<NewsModel> getNewGlobal({
    required bool isHeadlines,
    String? category,
    String? query,
    int? limit,
    int? page,
  }) async {
    limit ??= 1;
    page ??= 1;
    category ??= "";
    query ??= "";
    if (isHeadlines) {
      final response = await http.method(
        path:
            "top-headlines?country=us&language=$language&category=$category&q=$query&pageSize=$limit&page=$page&apiKey=$key",
        methodType: MethodType.get,
      );

      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioError;
      }
    } else {
      final response = await http.method(
        path:
            "everything?q=$query&language=$language&pageSize=$limit&page=$page&apiKey=$key",
        methodType: MethodType.get,
      );

      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioError;
      }
    }
  }
}
