// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_movies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelMoviesResponseImpl _$$ModelMoviesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelMoviesResponseImpl(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ModelMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$ModelMoviesResponseImplToJson(
        _$ModelMoviesResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
