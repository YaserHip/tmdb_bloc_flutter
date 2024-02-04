// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_movie.freezed.dart';
part 'model_movie.g.dart';

@freezed
class ModelMovie with _$ModelMovie {
  const factory ModelMovie({
    required bool adult,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required double popularity,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _ModelMovie;

  factory ModelMovie.fromJson(Map<String, dynamic> json) =>
      _$ModelMovieFromJson(json);
}
