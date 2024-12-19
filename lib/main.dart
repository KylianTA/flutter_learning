import 'package:flutter/material.dart';
import 'package:test_flutter/pages/home.dart';
import 'package:test_flutter/pages/connexion/connexion.dart';
import 'package:provider/provider.dart';
import 'pages/connexion/provider/user_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: const MyApp(),
    ),
  );
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
      home: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          return userProvider.currentUser != null
              ? MyHomePage()
              : LoginScreen();
        },
      ),
      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => MyHomePage(),
      }
    );
  }
}