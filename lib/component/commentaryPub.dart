import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counterDisLike = 0;
  int get counterDisLike => _counterDisLike;

  void incrementCounter() {
    _counterDisLike++;
    notifyListeners();
  }
}

class Commentarypub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      builder: (BuildContext context, Widget? widget) {
        CounterProvider counterProvider =
            Provider.of<CounterProvider>(context);
        return 
            IconButton(
              onPressed: () {
                counterProvider.incrementCounter();
              },
              icon: const Icon(
                Icons.comment,
                color: Colors.blue,
                size: 24,
              ),
            );

      },
    );
  }
}