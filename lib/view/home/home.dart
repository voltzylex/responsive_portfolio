import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_portfolio/view/certifications/certifications.dart';
import 'package:responsive_portfolio/view/intro/introduction_page.dart';
import 'package:responsive_portfolio/view/main/main_view.dart';
import 'package:responsive_portfolio/view/projects/project_view.dart';

class HomePage extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    // printLog("Screen width:${MediaQuery.sizeOf(context).width}");
    final size = MediaQuery.sizeOf(context).width;
    return size < 300
        ? pleaseIncreaseScreen(context)
        : const MainView(
            pages: [
              Introdunction(),
              ProjectView(),
              Certifications(),
            ],
          );
  }
}

Widget pleaseIncreaseScreen(BuildContext context) {
  return const Scaffold(
    body: Center(
      child: Text("Please increase the screen Size"),
    ),
  );
}
