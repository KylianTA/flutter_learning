import 'package:flutter/material.dart';

class Textpub extends StatelessWidget {
   final String text;
    const Textpub({
      super.key,
      required this.text,
    });
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: const EdgeInsets.fromLTRB(10,0,10,0),
      child : Text(
        text,
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}