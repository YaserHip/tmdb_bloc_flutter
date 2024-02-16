import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_now_playing_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/now_playing/state_now_playing_movies.dart';

class BlocNowPlayingMovies extends Bloc<Event, StateNowPlayingMovies> {
  final UseCaseGetNowPlayingMovies useCaseGetNowPlayingMovies;
  BlocNowPlayingMovies(this.useCaseGetNowPlayingMovies)
      : super(StateNowPlayingMoviesInitial()) {
    on<FetchNowPlayingMovies>((event, emit) async {
      emit(StateNowPlayingMoviesLoading());

      final result = await useCaseGetNowPlayingMovies();
      result.fold((l) => emit(StateNowPlayingMoviesError('Error')),
          (r) => emit(StateNowPlayingMoviesLoaded(r)));
    });
  }
}
