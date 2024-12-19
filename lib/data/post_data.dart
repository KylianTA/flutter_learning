
import 'package:test_flutter/data/user_data.dart' ;
import 'package:test_flutter/models/post_model.dart';


PostModel firstPost = PostModel(
  owner: kyky,
  text:
      'Magnifique',
  image: 'lib/images/dorain.png',
  likes: [dodo],
  dislikes: [],
  share: [],
);

PostModel SecondPost = PostModel(
  owner: dodo,
  text:
      'Pas ouf celui ci',
  image: 'lib/images/image.webp',
  likes: [kyky],
  dislikes: [],
  share: [],
);

PostModel ThirdPost = PostModel(
  owner: dodo,
  text:
      'Ahhh la on est d accord',
  image: 'lib/images/cool.png',
  likes: [],
  dislikes: [kyky,dodo],
  share: [],
);

List<PostModel> posts = [
  firstPost,
  SecondPost,
  ThirdPost,
  firstPost,
  SecondPost,
  ThirdPost,
  firstPost,
  SecondPost,
  ThirdPost,
  firstPost,
  SecondPost,
  ThirdPost,
];

