import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counterShare = 0;
  int get counterShare => _counterShare;

  void incrementCounter() {
    _counterShare++;
    notifyListeners();
  }
}

class SharePub extends StatelessWidget {
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
                Icons.share_rounded,
                color: Colors.blue,
                size: 14,
              ),
            ),
            Text(counterProvider.counterShare.toString()),
          ],
        );
      },
    );
  }
}