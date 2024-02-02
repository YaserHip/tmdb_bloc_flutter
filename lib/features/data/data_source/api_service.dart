import 'package:tmdb_bloc_flutter/features/data/models/movie.dart';
import 'package:tmdb_bloc_flutter/features/data/models/movie_details.dart';

abstract mixin class ApiServiceSource {
  Future<List<Movie>> getNowPlayingMovies();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();
  Future<List<Movie>> getUpcomingMovies();
  Future<MovieDetails> getMovieDetails(int id);
}
