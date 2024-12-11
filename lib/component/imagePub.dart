import 'package:flutter/material.dart';
import 'dart:math' show Random;
class Imagepub extends StatelessWidget {
  var imageLib = ['lib/images/image.webp','lib/images/dorain.png','lib/images/cool.png'];
  var random = new Random();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10,10,10,0),
      child: Card(
        elevation: 5,
        
        child: ClipRRect(
          
          child: Image.asset(
          imageLib[random.nextInt(3)],
          fit: BoxFit.cover,
        ),
        ) 
      ),
    );
  }
}
