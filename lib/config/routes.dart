import 'package:go_router/go_router.dart';
import 'package:tmdb_bloc_flutter/features/presentation/pages/page_details.dart';
import 'package:tmdb_bloc_flutter/features/presentation/pages/page_home.dart';

enum AppRoute { pageHome, pageDetails }

final goRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => const PageHome(),
      name: AppRoute.pageHome.name),
  GoRoute(
      path: '/details/:id',
      builder: (context, state) => PageDetails(id: state.pathParameters['id']!),
      name: AppRoute.pageDetails.name),
]);
