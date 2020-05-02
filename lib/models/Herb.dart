import 'package:flutter/material.dart';

class Herb {
  final String name;
  final String quantity;
  final String amount;
  final Color light;
  final Color dark;
  final String image;

  Herb(
      {@required this.name,
      @required this.quantity,
      @required this.amount,
      @required this.light,
      @required this.dark,
      @required this.image});
}
