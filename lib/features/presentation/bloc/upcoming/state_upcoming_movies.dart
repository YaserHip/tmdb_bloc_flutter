import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';

sealed class StateUpcomingMovies {}

class StateUpcomingMoviesInitial extends StateUpcomingMovies {}

class StateUpcomingMoviesLoading extends StateUpcomingMovies {}

class StateUpcomingMoviesLoaded extends StateUpcomingMovies {
  final List<EntityMovie> movies;

  StateUpcomingMoviesLoaded(this.movies);
}

class StateUpcomingMoviesError extends StateUpcomingMovies {
  final String message;
  StateUpcomingMoviesError(this.message);
}
