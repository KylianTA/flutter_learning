import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_flutter/component/commentary_pub.dart';
import 'package:test_flutter/component/dislike_pub.dart';
import 'package:test_flutter/component/image_pub.dart';
import 'package:test_flutter/component/like_pub.dart';
import 'package:test_flutter/component/share_pub.dart';
import 'package:test_flutter/component/text_pub.dart';
import 'package:test_flutter/models/post_model.dart';



class Post extends StatelessWidget {
  final PostModel postM;

   Post({super.key, required this.postM});
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
            if(postM.image != null) Imagepub(imageLib: postM.image!),
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
            if(postM.image != null) Textpub(text : postM.text!),
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
