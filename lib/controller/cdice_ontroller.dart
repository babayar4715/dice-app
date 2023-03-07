import 'dart:math';

import 'package:get/get.dart';

class DiceCtl extends GetxController {
  RxInt rightkubik = 3.obs;
  RxInt leftkubik = 5.obs;

  void baskanda() {
    leftkubik.value = Random().nextInt(7);
    rightkubik.value = Random().nextInt(7);
  }

  int tekcher(int san) {
    if (san == 0) {
      return 1;
    } else {
      return san;
    }
  }
}
// int leftkubik = 5;
//   int rightkubik = 6;

//   void baskanda (){
//     setState(() {
      
//     leftkubik = Random().nextInt(7);
//     rightkubik = Random().nextInt(7);
      
//     });
  
//   }