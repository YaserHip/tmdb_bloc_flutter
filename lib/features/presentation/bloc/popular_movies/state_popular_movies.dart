import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';

sealed class StatePopularMovies {}

class StatePopularMoviesInitial extends StatePopularMovies {}

class StatePopularMoviesLoading extends StatePopularMovies {}

class StatePopularMoviesLoaded extends StatePopularMovies {
  final List<EntityMovie> movies;
  StatePopularMoviesLoaded(this.movies);
}

class StatePopularMoviesError extends StatePopularMovies {
  final String message;
  StatePopularMoviesError(this.message);
}
