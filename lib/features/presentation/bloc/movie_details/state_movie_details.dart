import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie_details.dart';

sealed class StateMovieDetails {}

class StateMovieDetailsInitial extends StateMovieDetails {}

class StateMovieDetailsLoading extends StateMovieDetails {}

class StateMovieDetailsLoaded extends StateMovieDetails {
  final EntityMovieDetails movieDetails;
  StateMovieDetailsLoaded(this.movieDetails);
}

class StateMovieDetailsError extends StateMovieDetails {
  final String message;
  StateMovieDetailsError(this.message);
}
