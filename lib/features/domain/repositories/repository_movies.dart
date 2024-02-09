import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie_details.dart';

abstract mixin class RepositoryMovies {
  Future<Either<Failure, List<EntityMovie>>> getNowPlayingMovies();
  Future<Either<Failure, List<EntityMovie>>> getPopularMovies();
  Future<Either<Failure, List<EntityMovie>>> getTopRatedMovies();
  Future<Either<Failure, List<EntityMovie>>> getUpcomingMovies();
  Future<Either<Failure, EntityMovieDetails>> getMovieDetails(int id);
}
