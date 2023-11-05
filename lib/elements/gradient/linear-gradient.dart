import 'package:flutter/material.dart';

final Shader bluePurpleGradient = LinearGradient(
  colors: <Color>[
    Color.fromRGBO(0, 133, 255, 1),
    Color.fromRGBO(167, 0, 255, 1),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 30.0, 30.0));

final Shader whiteGradient = LinearGradient(
  colors: <Color>[
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(255, 255, 255, 1),
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 30.0, 30.0));
