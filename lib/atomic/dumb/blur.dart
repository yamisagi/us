import 'package:flutter/material.dart';
import 'package:pro_animated_blur/pro_animated_blur.dart';

class BlurredCard extends StatefulWidget {
  final double? blurAmount;
  const BlurredCard({
    Key? key,
    this.blurAmount,
  }) : super(key: key);

  @override
  State<BlurredCard> createState() => _BlurredCardState();
}

class _BlurredCardState extends State<BlurredCard> {
  bool _isBlurred = true;

  void switchBlur() {
    _isBlurred = !_isBlurred;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double maxBlurAmount = widget.blurAmount ?? 8;
    double minBlurAmount = 0;
    return Container(
      clipBehavior: Clip
          .antiAlias, // Make sure to use a Clip setting other than none. Otherwise, the blurring will be applied to whole background.
      decoration: const BoxDecoration(
        color: Color(0x1FFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: ProAnimatedBlur(
        blur: _isBlurred ? maxBlurAmount : minBlurAmount,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            switchBlur();
          },
        ),
      ),
    );
  }
}
