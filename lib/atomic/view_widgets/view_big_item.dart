import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:us_re/atomic/dumb/dumb_variables.dart';

/// This widget is Simple Flip Card. It is used in views.
/// It is used to show the content of the card. Fron side is image and back side is note.

class ScreenBigItem extends StatelessWidget {
  const ScreenBigItem({
    Key? key,
    required this.assetImage,
    required this.note,
    required this.bacgroundNote,
  }) : super(key: key);
  final String assetImage;
  final String note;
  final String bacgroundNote;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: CommonVariables.borderRadius,
            image: DecorationImage(
              image: AssetImage(assetImage),
              fit: BoxFit.cover,
            ),
            boxShadow: CommonVariables.boxShadowList),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: CommonVariables.borderRadius,
              gradient: CommonVariables.linearGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              animatedText(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      back: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: CommonVariables.borderRadius,
            boxShadow: CommonVariables.boxShadowList),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: CommonVariables.borderRadius,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                textAlign: TextAlign.center,
                bacgroundNote,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.red[500],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedTextKit animatedText() {
    return AnimatedTextKit(
        isRepeatingAnimation: true,
        repeatForever: true,
        animatedTexts: [
          WavyAnimatedText(
            note,
            textStyle: const TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ]);
  }
}
