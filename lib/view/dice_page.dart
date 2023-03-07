import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_21_dice_app/controller/cdice_ontroller.dart';
import 'package:flutter_application_21_dice_app/widgets/dice_widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class DicePage extends StatelessWidget {
  final Ctl = Get.put(DiceCtl());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 145, 145),
      appBar: AppBar(
        title: const Text(
          'the fifth task',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 150, 145, 145),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: InkWell(
            onTap: Ctl.baskanda,
            child: Obx(() {
              return Row(
                children: [
                  dice_wudget(
                    onTap: Ctl.baskanda,
                    kubikSany: '${Ctl.rightkubik.value}',
                  ),
                  dice_wudget(
                    onTap: Ctl.baskanda,
                    kubikSany: '${Ctl.leftkubik.value}',
                  )
                ],
              );
            })),
      ),
    );
  }
}
