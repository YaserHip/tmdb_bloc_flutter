import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/config/dependency_injection.dart';
import 'package:tmdb_bloc_flutter/config/routes.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/movie_details/bloc_movie_details.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/now_playing/bloc_now_playing_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/popular_movies/bloc_popular_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/top_rated/bloc_top_rated_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/upcoming/bloc_upcoming_movies.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<BlocMovieDetails>()),
      BlocProvider(
          create: (context) =>
              getIt<BlocPopularMovies>()..add(FetchPopularMovies())),
      BlocProvider(
          create: (context) =>
              getIt<BlocNowPlayingMovies>()..add(FetchNowPlayingMovies())),
      BlocProvider(
          create: (context) =>
              getIt<BlocTopRatedMovies>()..add(FetchTopRatedMovies())),
      BlocProvider(
          create: (context) =>
              getIt<BlocUpcomingMovies>()..add(FetchUpcomingMovies())),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
          colorSchemeSeed: Colors.cyan,
          useMaterial3: true,
          brightness: Brightness.dark),
      theme: ThemeData(
          colorSchemeSeed: Colors.cyan,
          useMaterial3: true,
          brightness: Brightness.light),
      routeInformationProvider: goRouter.routeInformationProvider,
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      restorationScopeId: 'app',
      onGenerateTitle: (context) => 'TMDB Bloc Flutter',
    );
  }
}
