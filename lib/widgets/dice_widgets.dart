import 'package:flutter/material.dart';

class dice_wudget extends StatelessWidget {
  const dice_wudget({
    Key? key,
    this.onTap,
    required this.kubikSany,
  }) : super(key: key);

  final Function()? onTap;
  final String kubikSany;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/dice$kubikSany.png',
          ),
        ),
      ),
    );
  }
}
