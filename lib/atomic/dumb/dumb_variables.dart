import 'package:flutter/material.dart';

class CommonVariables {
  static final boxShadowList = [
    BoxShadow(
      color: Colors.black.withOpacity(0.5),
      blurRadius: 10,
      offset: const Offset(0, 10),
    ),
  ];
  static final borderRadius = BorderRadius.circular(20);
  static final linearGradient =
      LinearGradient(begin: Alignment.bottomRight, colors: [
    Colors.black.withOpacity(.4),
    Colors.black.withOpacity(.2),
  ]);
}
