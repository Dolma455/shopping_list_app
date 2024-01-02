import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  meat,
  dairy,
  spices,
  sweets,
  fruits,
  convinience,
  hygiene,
  other
}

class Categorry {
  Categorry(
    this.title,
    this.color
  );
  final String title;
  final Color color;
}