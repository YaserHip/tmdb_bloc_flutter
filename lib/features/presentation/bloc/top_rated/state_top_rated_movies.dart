import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';

sealed class StateTopRatedMovies {}

class StateTopRatedMoviesInitial extends StateTopRatedMovies {}

class StateTopRatedMoviesLoading extends StateTopRatedMovies {}

class StateTopRatedMoviesLoaded extends StateTopRatedMovies {
  final List<EntityMovie> movies;
  StateTopRatedMoviesLoaded(this.movies);
}

class StateTopRatedMoviesError extends StateTopRatedMovies {
  final String message;
  StateTopRatedMoviesError(this.message);
}
