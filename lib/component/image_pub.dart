import 'package:flutter/material.dart';
class Imagepub extends StatelessWidget {
  final String imageLib;
  const Imagepub({
    super.key,
    required this.imageLib,
  
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10,10,10,0),
      child: Card(
        elevation: 5,
        
        child: ClipRRect(
          
          child: Image.asset(
          imageLib,
          fit: BoxFit.cover,
        ),
        ) 
      ),
    );
  }
}
