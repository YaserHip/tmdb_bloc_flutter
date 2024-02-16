import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_upconmig_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/upcoming/state_upcoming_movies.dart';

class BlocUpcomingMovies extends Bloc<Event, StateUpcomingMovies> {
  final UseCaseGetUpcomingMovies getUpcomingMovies;
  BlocUpcomingMovies(this.getUpcomingMovies)
      : super(StateUpcomingMoviesInitial()) {
    on<FetchUpcomingMovies>(
      (event, emit) async {
        emit(StateUpcomingMoviesLoading());
        final result = await getUpcomingMovies();
        result.fold((l) => emit(StateUpcomingMoviesError('Error')),
            (r) => emit(StateUpcomingMoviesLoaded(r)));
      },
    );
  }
}
