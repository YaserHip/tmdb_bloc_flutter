import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerSingleton<Dio>(
      Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));
}
