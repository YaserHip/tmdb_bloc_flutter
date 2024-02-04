// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_bloc_flutter/features/data/models/model_movie.dart';

part 'model_movies_response.freezed.dart';
part 'model_movies_response.g.dart';

@freezed
class ModelMoviesResponse with _$ModelMoviesResponse {
  const factory ModelMoviesResponse({
    required int page,
    required List<ModelMovie> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _ModelMoviesResponse;

  factory ModelMoviesResponse.fromJson(Map<String, dynamic> json) =>
      _$ModelMoviesResponseFromJson(json);
}
