import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_popular_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/popular_movies/state_popular_movies.dart';

class BlocPopularMovies extends Bloc<Event, StatePopularMovies> {
  final UseCaseGetPopularMovies useCaseGetPopularMovies;
  BlocPopularMovies(this.useCaseGetPopularMovies)
      : super(StatePopularMoviesInitial()) {
    on<FetchPopularMovies>((event, emit) async {
      emit(StatePopularMoviesLoading());
      final result = await useCaseGetPopularMovies();
      result.fold((l) => emit(StatePopularMoviesError('Error')),
          (r) => emit(StatePopularMoviesLoaded(r)));
    });
  }
}
