import 'package:tmdb_bloc_flutter/features/data/models/model_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie_details.dart';

extension MapperModelMovieDetails on ModelMovieDetails {
  EntityMovieDetails toEntity() => EntityMovieDetails(
        adult: adult,
        backdropPath: backdropPath,
        homepage: homepage,
        id: id,
        imdbId: imdbId,
        originalLanguage: originalLanguage,
        originalTitle: originalTitle,
        overview: overview,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        runtime: runtime,
        title: title,
        video: video,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
