import 'package:flutter/material.dart';
import 'package:test_flutter/models/user.dart';
import 'package:provider/provider.dart';
import 'provider/user_provider.dart';
class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final userProvider = Provider.of<UserProvider>(context, listen: false);
                User newUser = User(
                  username: usernameController.text,
                  avatar: 'https://avatars.githubusercontent.com/u/38187238',  
                );
                userProvider.setCurrentUser(newUser);
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
