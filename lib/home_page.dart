import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_portfolio/splash_provider.dart';

class HomePage extends GoRouteData {
final String name;

  HomePage({required this.name});
  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    // TODO: implement redirect
    return super.redirect(context, state);
  }
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SplashProvider(),
      child: Consumer<SplashProvider>(
        builder: (context, provider, child) {

                return Scaffold(
                  body: Center(
                    child: Text("distance $name"),
                  ),


          );
        },
      ),
    );
  }
}


