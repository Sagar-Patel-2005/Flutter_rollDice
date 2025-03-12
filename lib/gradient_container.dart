import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;
class gradientContainer extends StatelessWidget {
  const gradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        child: DoRoll(),
      ),
    );
  }
}