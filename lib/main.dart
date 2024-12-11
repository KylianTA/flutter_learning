import 'package:flutter/material.dart';
import 'package:test_flutter/component/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Réseau social',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 40, 125, 139)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mon réseau social'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text('Mon réseau social'),
        ),
      ),
      body: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
              child: Post(),
            );
          }),
    );
  }
}
