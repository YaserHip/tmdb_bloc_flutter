import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';
import 'package:tmdb_bloc_flutter/features/domain/repositories/repository_movies.dart';

class UseCaseGetTopRatedMovies {
  final RepositoryMovies _repository;
  UseCaseGetTopRatedMovies(this._repository);

  Future<Either<Failure, List<EntityMovie>>> call() async {
    return await _repository.getTopRatedMovies();
  }
}