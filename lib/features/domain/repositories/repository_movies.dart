import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movies_response.dart';

abstract mixin class RepositoryMovies {
  Future<Either<Failure, ModelMoviesResponse>> getNowPlayingMovies();
  Future<Either<Failure, ModelMoviesResponse>> getPopularMovies();
  Future<Either<Failure, ModelMoviesResponse>> getTopRatedMovies();
  Future<Either<Failure, ModelMoviesResponse>> getUpcomingMovies();
  Future<Either<Failure, ModelMovieDetails>> getMovieDetails(int id);
}
