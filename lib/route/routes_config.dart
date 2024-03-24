import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:responsive_portfolio/view/splash/splash_page.dart';

part 'routes_config.g.dart';

final GoRouter goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,

);

@TypedGoRoute<SplashRoute>(
  path: '/',
  // routes: <TypedGoRoute<GoRouteData>>[
  //   TypedGoRoute<HomePage>(
  //     path: 'home',
  //   )
  // ],
)
class SplashRoute extends GoRouteData {

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}
// dart run build