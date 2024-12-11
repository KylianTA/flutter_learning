import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_flutter/component/commentaryPub.dart';
import 'package:test_flutter/component/dislikePub.dart';
import 'package:test_flutter/component/imagePub.dart';
import 'package:test_flutter/component/likePub.dart';
import 'package:test_flutter/component/sharePub.dart';
import 'package:test_flutter/component/textPub.dart';



class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
        GestureDetector(
        onTap: () {
          print("WOAAA");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Imagepub(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 10,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Likepub(),
                  DisLikepub(),
                  SharePub(),
                ],
              ),
            ),
            Textpub(),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.fromLTRB(0, 0, 10,0),
              child : Commentarypub(),
            ),
            
          ],
        ),
      );
  
  }
}
