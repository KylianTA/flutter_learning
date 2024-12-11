import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counterLike = 0;
  int get counterLike => _counterLike;

  void incrementCounter() {
    _counterLike++;
    notifyListeners();
  }
}

class Likepub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      builder: (BuildContext context, Widget? widget) {
        CounterProvider counterProvider =
            Provider.of<CounterProvider>(context);
        return Row(
          children: [
            IconButton(
              onPressed: () {
                counterProvider.incrementCounter();
              },
              icon: const Icon(
                Icons.thumb_up_alt,
                color: Colors.blue,
                size: 14,
              ),
            ),
            Text(counterProvider.counterLike.toString()),
          ],
        );
      },
    );
  }
}