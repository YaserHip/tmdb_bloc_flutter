import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tmdb_bloc_flutter/features/data/data_source/api_service.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_now_playing_movies.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_popular_movies.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_top_rated_movies.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_upconmig_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/movie_details/bloc_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/now_playing/bloc_now_playing_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/popular_movies/bloc_popular_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/top_rated/bloc_top_rated_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/upcoming/bloc_upcoming_movies.dart';

final getIt = GetIt.instance;

void init() {
  // Bloc
  getIt.registerFactory(() => BlocMovieDetails(getIt()));
  getIt.registerFactory(() => BlocNowPlayingMovies(getIt()));
  getIt.registerFactory(() => BlocPopularMovies(getIt()));
  getIt.registerFactory(() => BlocTopRatedMovies(getIt()));
  getIt.registerFactory(() => BlocUpcomingMovies(getIt()));

  //UseCases
  getIt.registerLazySingleton(() => UseCaseGetMovieDetails(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetNowPlayingMovies(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetPopularMovies(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetTopRatedMovies(getIt()));
  getIt.registerLazySingleton(() => UseCaseGetUpcomingMovies(getIt()));

  // Data
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt()));

  // Services
  getIt.registerLazySingleton(
      () => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')));
}
