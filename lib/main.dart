import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Github Perfil'),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/chico.jpg'),
                ),
                accountName: Text(
                  'Chico Moedas',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  'babycoin@github.com',
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Perfil'),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.book),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Repositórios'),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.star),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Favoritos'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/chico.jpg'),
            ),
            Text(
              'Chico Moedas',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Baby Coin',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.map,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Brazil, Rio de Janeiro, RJ')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('babycoin@github.com')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '17M',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('seguidores'),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('seguindo'),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
                onPressed:null ,
                child: const Icon(Icons.add),)
      ),
    );
  }
}

