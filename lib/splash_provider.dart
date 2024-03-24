import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

class SplashProvider extends ChangeNotifier{
  Timer? timer;
  SplashProvider(){
    int count = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print("timer called $count ");

      count++;
    },);
  }

@override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

}
