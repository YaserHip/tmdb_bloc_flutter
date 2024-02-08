import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_movie_details.freezed.dart';

@freezed
class EntityMovieDetails with _$EntityMovieDetails {
  const factory EntityMovieDetails({
    bool? adult,
    String? backdropPath,
    String? homepage,
    int? id,
    String? imdbId,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    int? runtime,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) = _EntityMovieDetails;
}
