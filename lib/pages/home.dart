import 'package:test_flutter/component/post.dart';
import 'package:test_flutter/models/post_model.dart';
import 'package:test_flutter/data/post_data.dart' as data;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'connexion/provider/user_provider.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Center(
          child: Text('Mon réseau social'),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(userProvider.currentUser?.username ?? 'Utilisateur inconnu'),
              accountEmail: Text('ouais@ouais.fr'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(userProvider.currentUser?.avatar ?? ''),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Déconnexion'),
              onTap: () {
                userProvider.clearUser();
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: data.posts.length,
          itemBuilder: (context, index) {
            PostModel post = data.posts[index];
            return Container(
              child: Post(postM: post,),
            );
          }),
    );
  }
}