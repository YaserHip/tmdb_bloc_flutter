import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_bloc_flutter/config/dependency_injection.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/events_movies.dart';
import 'package:tmdb_bloc_flutter/features/presentation/bloc/movie_details/bloc_movie_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        darkTheme: ThemeData(
            colorSchemeSeed: Colors.amber,
            useMaterial3: true,
            brightness: Brightness.dark),
        theme: ThemeData(
            colorSchemeSeed: Colors.amber,
            useMaterial3: true,
            brightness: Brightness.light),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => getIt<BlocMovieDetails>().add(event))
          ],
          child: Container(),
        ));
  }
}
