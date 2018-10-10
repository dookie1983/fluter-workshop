import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  final String name;
  final int price;

  Games({this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}