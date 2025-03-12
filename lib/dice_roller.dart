import 'package:flutter/material.dart';
import 'dart:math';

class DoRoll extends StatefulWidget {
    const DoRoll({ super.key });

    @override
    State<DoRoll> createState() => _DoRollState();
}

class _DoRollState extends State<DoRoll> {
    var currentDice = 3;
    void rollDice(){
        setState(() {
          currentDice = Random().nextInt(6) + 1;
        });
    }
    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset(
                    "assets/images/dice$currentDice.png",
                    width: 200,
                    height: 200,
                ),
                const SizedBox(height: 31,),
                TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 25
                        ),
                        foregroundColor: Colors.white,
                    ),
                    onPressed: rollDice,
                    child: const Text("Roll Dice!"))
            ],
        );
    }
}