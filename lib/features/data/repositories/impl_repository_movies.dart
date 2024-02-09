import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/features/data/data_source/api_service.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movies_response.dart';
import 'package:tmdb_bloc_flutter/features/domain/repositories/repository_movies.dart';

class ImplRepositoryMovies implements RepositoryMovies {
  final ApiServiceSource apiService;

  ImplRepositoryMovies({required this.apiService});

  @override
  Future<Either<Failure, ModelMovieDetails>> getMovieDetails(int id) {
    // TODO: implement getMovieDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ModelMoviesResponse>> getNowPlayingMovies() {
    // TODO: implement getNowPlayingMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ModelMoviesResponse>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ModelMoviesResponse>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, ModelMoviesResponse>> getUpcomingMovies() {
    // TODO: implement getUpcomingMovies
    throw UnimplementedError();
  }
}
