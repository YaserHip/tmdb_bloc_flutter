import 'package:dio/dio.dart';
import 'package:tmdb_bloc_flutter/features/data/models/movie_details.dart';
import 'package:tmdb_bloc_flutter/features/data/models/movies_response.dart';

abstract mixin class ApiServiceSource {
  Future<MoviesResponse> getNowPlayingMovies();
  Future<MoviesResponse> getPopularMovies();
  Future<MoviesResponse> getTopRatedMovies();
  Future<MoviesResponse> getUpcomingMovies();
  Future<MovieDetails> getMovieDetails(int id);
}

class ApiService implements ApiServiceSource {
  ApiService(this._dio, this.apiKey);

  final Dio _dio;
  final String apiKey;

  @override
  Future<MovieDetails> getMovieDetails(int id) async {
    final response = await _dio.get(
      '/movie/$id',
      queryParameters: {'api_key': apiKey},
    );
    return MovieDetails.fromJson(response.data);
  }

  @override
  Future<MoviesResponse> getNowPlayingMovies() async {
    final response = await _dio.get(
      '/movie/now_playing',
      queryParameters: {'api_key': apiKey},
    );
    return MoviesResponse.fromJson(response.data);
  }

  @override
  Future<MoviesResponse> getPopularMovies() async {
    final response = await _dio.get(
      '/movie/popular',
      queryParameters: {'api_key': apiKey},
    );
    return MoviesResponse.fromJson(response.data);
  }

  @override
  Future<MoviesResponse> getTopRatedMovies() async {
    final response = await _dio.get(
      '/movie/top_rated',
      queryParameters: {'api_key': apiKey},
    );

    return MoviesResponse.fromJson(response.data);
  }

  @override
  Future<MoviesResponse> getUpcomingMovies() async {
    final response = await _dio.get(
      '/movie/upcoming',
      queryParameters: {'api_key': apiKey},
    );
    return MoviesResponse.fromJson(response.data);
  }
}
