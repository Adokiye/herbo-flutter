import 'package:flutter/material.dart';

class Herb {
  final String name;
  final String quantity;
  final String amount;
  final Color light;
  final Color dark;

  Herb(
      {@required this.name,
      @required this.quantity,
      @required this.amount,
      @required this.light,
      @required this.dark});
}
