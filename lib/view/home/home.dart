import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_portfolio/view/intro/introduction_page.dart';
import 'package:responsive_portfolio/view/main/main_view.dart';

class HomePage extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    // printLog("Screen width:${MediaQuery.sizeOf(context).width}");
    return const MainView(
      pages: [
        Introdunction(),
      ],
    );
  }
}
