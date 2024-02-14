import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';

sealed class StateNowPlayingMovies {}

class StateNowPlayingMoviesInitial extends StateNowPlayingMovies {}

class StateNowPlayingMoviesLoading extends StateNowPlayingMovies {}

class StateNowPlayingMoviesLoaded extends StateNowPlayingMovies {
  final List<EntityMovie> movies;
  StateNowPlayingMoviesLoaded(this.movies);
}

class StateNowPlayingMoviesError extends StateNowPlayingMovies {
  final String message;
  StateNowPlayingMoviesError(this.message);
}
