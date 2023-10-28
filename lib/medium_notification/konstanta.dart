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


const loremlong = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book";