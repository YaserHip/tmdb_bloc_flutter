import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_top_rated_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/top_rated/state_top_rated_movies.dart';

class BlocTopRatedMovies extends Bloc<Event, StateTopRatedMovies> {
  final UseCaseGetTopRatedMovies useCaseGetTopRatedMovies;
  BlocTopRatedMovies(this.useCaseGetTopRatedMovies)
      : super(StateTopRatedMoviesInitial()) {
    on<FetchTopRatedMovies>(
      (event, emit) async {
        emit(StateTopRatedMoviesLoading());
        final result = await useCaseGetTopRatedMovies();
        result.fold((l) => StateTopRatedMoviesError('Error'),
            (r) => StateTopRatedMoviesLoaded(r));
      },
    );
  }
}
