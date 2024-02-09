import 'package:tmdb_bloc_flutter/features/data/models/model_movie.dart';
import 'package:tmdb_bloc_flutter/features/domain/entities/entity_movie.dart';

extension MapperModelMovie on ModelMovie {
  EntityMovie toEntity() => EntityMovie(
        adult: adult,
        backdropPath: backdropPath,
        id: id,
        originalTitle: originalTitle,
        popularity: popularity,
        posterPath: posterPath,
        releaseDate: releaseDate,
        title: title,
        voteAverage: voteAverage,
        voteCount: voteCount,
      );
}
