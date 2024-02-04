import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_movie.freezed.dart';

@freezed
class EntityMovie with _$EntityMovie {
  const factory EntityMovie({
    required bool adult,
    required String? backdropPath,
    required int id,
    required String originalTitle,
    required double popularity,
    required String? posterPath,
    required String releaseDate,
    required String title,
    required double voteAverage,
    required int voteCount,
  }) = _EntityMovie;
}
