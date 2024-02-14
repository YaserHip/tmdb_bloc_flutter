sealed class Event {}

class FetchPopularMovies extends Event {}

class FetchNowPlayingMovies extends Event {}

class FetchTopRatedMovies extends Event {}

class FetchUpcomingMovies extends Event {}

class FetchMovieDetails extends Event {
  final int id;
  FetchMovieDetails(this.id);
}
