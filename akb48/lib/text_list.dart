import 'package:flutter/material.dart';

class TextList extends StatelessWidget {

  final List<String> textList;

  TextList(this.textList);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: textList.map(
          (text) => Text(text)
        ).toList(),
      )
    );
  }
}