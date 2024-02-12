import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/domain/repositories/repository_movies.dart';

class UseCaseGetMovieDetails {
  final RepositoryMovies _repository;

  UseCaseGetMovieDetails(this._repository);

  Future<Either<Failure, EntityMovieDetails>> call(int id) async {
    return await _repository.getMovieDetails(id);
  }
}
