import 'package:dartz/dartz.dart';
import 'package:tmdb_bloc_flutter/config/failure.dart';
import 'package:tmdb_bloc_flutter/extensions/mapper_movie.dart';
import 'package:tmdb_bloc_flutter/extensions/mapper_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/data/data_source/api_service.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/domain/repositories/repository_movies.dart';

class ImplRepositoryMovies implements RepositoryMovies {
  final ApiServiceSource apiService;

  ImplRepositoryMovies({required this.apiService});

  @override
  Future<Either<Failure, EntityMovieDetails>> getMovieDetails(int id) async {
    try {
      final response = await apiService.getMovieDetails(id);
      return Right(response.toEntity());
    } on Exception {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityMovie>>> getNowPlayingMovies() async {
    try {
      final response = await apiService.getNowPlayingMovies();
      return Right(response.results.map((e) => e.toEntity()).toList());
    } on Exception {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityMovie>>> getPopularMovies() async {
    try {
      final response = await apiService.getPopularMovies();
      return Right(response.results.map((e) => e.toEntity()).toList());
    } on Exception {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityMovie>>> getTopRatedMovies() async {
    try {
      final response = await apiService.getTopRatedMovies();
      return Right(response.results.map((e) => e.toEntity()).toList());
    } on Exception {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityMovie>>> getUpcomingMovies() async {
    try {
      final response = await apiService.getUpcomingMovies();
      return Right(response.results.map((e) => e.toEntity()).toList());
    } on Exception {
      return const Left(ServerFailure());
    }
  }
}
