import 'dart:math';

import 'package:flutter/material.dart';

/// color palette

const kBlue = Color(0xFF3c79f6);
const kGreen = Color(0xFF1d8e22);
const kPink = Color(0xFFf45188);
const kLightGreen = Color(0xFF67a039);
const kOrange = Color(0xFFde573c);

List colorBg = List.generate(
  26,
  (index) => Color.fromRGBO(
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
    1,
  ),
);
