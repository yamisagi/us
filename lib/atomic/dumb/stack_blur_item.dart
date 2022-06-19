import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:us_re/atomic/dumb/blur.dart';

class StackBlurItem extends StatefulWidget {
  const StackBlurItem({Key? key}) : super(key: key);

  @override
  State<StackBlurItem> createState() => _StackBlurItemState();
}

class _StackBlurItemState extends State<StackBlurItem> {
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  // Those texts are under blur effect
                  ColorizeAnimatedText(
                    'Hidden ',
                    textStyle: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.red[300],
                    ),
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'Hidden',
                    textStyle: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.red[500],
                    ),
                    colors: colorizeColors,
                  ),
                  ColorizeAnimatedText(
                    'Hidden',
                    textStyle: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.red[900],
                    ),
                    colors: colorizeColors,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                child: Image.asset('assets/widget/bottom.png'),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: double.infinity,
            height: 280,
            child: Column(
              children: const [
                Expanded(
                    child: BlurredCard(
                  blurAmount: 20,
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
