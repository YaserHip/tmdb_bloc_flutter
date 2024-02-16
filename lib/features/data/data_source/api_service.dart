import 'package:dio/dio.dart';
import 'package:tmdb_bloc_flutter/config/apikey.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movies_response.dart';

abstract mixin class ApiServiceSource {
  Future<ModelMoviesResponse> getNowPlayingMovies();
  Future<ModelMoviesResponse> getPopularMovies();
  Future<ModelMoviesResponse> getTopRatedMovies();
  Future<ModelMoviesResponse> getUpcomingMovies();
  Future<ModelMovieDetails> getMovieDetails(int id);
}

class ApiService implements ApiServiceSource {
  ApiService(this._dio);

  final Dio _dio;
  final apiKey = APIKey.key;

  @override
  Future<ModelMovieDetails> getMovieDetails(int id) async {
    final response = await _dio.get(
      '/movie/$id',
      queryParameters: {'api_key': apiKey},
    );
    return ModelMovieDetails.fromJson(response.data);
  }

  @override
  Future<ModelMoviesResponse> getNowPlayingMovies() async {
    final response = await _dio.get(
      '/movie/now_playing',
      queryParameters: {'api_key': apiKey},
    );
    return ModelMoviesResponse.fromJson(response.data);
  }

  @override
  Future<ModelMoviesResponse> getPopularMovies() async {
    final response = await _dio.get(
      '/movie/popular',
      queryParameters: {'api_key': apiKey},
    );
    return ModelMoviesResponse.fromJson(response.data);
  }

  @override
  Future<ModelMoviesResponse> getTopRatedMovies() async {
    final response = await _dio.get(
      '/movie/top_rated',
      queryParameters: {'api_key': apiKey},
    );

    return ModelMoviesResponse.fromJson(response.data);
  }

  @override
  Future<ModelMoviesResponse> getUpcomingMovies() async {
    final response = await _dio.get(
      '/movie/upcoming',
      queryParameters: {'api_key': apiKey},
    );
    return ModelMoviesResponse.fromJson(response.data);
  }
}
