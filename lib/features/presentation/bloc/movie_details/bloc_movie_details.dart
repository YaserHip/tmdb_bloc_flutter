import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/features/domain/usecases/usecase_get_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/movie_details/state_movie_details.dart';

class BlocMovieDetails extends Bloc<Event, StateMovieDetails> {
  final UseCaseGetMovieDetails useCaseGetMovieDetails;
  BlocMovieDetails(this.useCaseGetMovieDetails)
      : super(StateMovieDetailsInitial()) {
    on<FetchMovieDetails>(
      (event, emit) async {
        emit(StateMovieDetailsLoading());
        final result = await useCaseGetMovieDetails(event.id);
        result.fold((l) => StateMovieDetailsError("Error"),
            (r) => StateMovieDetailsLoaded(r));
      },
    );
  }
}
