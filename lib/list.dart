import 'package:flutter/material.dart';
import 'main.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const MyListPage(title: 'List Test'),
    );
  }

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  var listItem = [
    "Savar",
    "Archer",
    "Lancer",
    "Rider",
    "Caster",
    "Assassin",
    "Berserker",
    "Ruler",
    "Avenger",
    "Alterego",
    "Mooncancer"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('List Test'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black38),
                  ),
                ),
                child: ListTile(
                  leading: const Icon(Icons.done),
                  title: Text(listItem[index]),
                  subtitle: Text('$index'),
                  onTap: () {/* react to the tile being tapped */},
                ));
          },
          itemCount: listItem.length,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text("Home"),
                onTap: () {
                  Navigator.of(context).push<dynamic>(
                    MyHomePage.route(),
                  );
                },
              ),
              ListTile(
                title: const Text("List Sample"),
                onTap: () {
                  Navigator.of(context).push<dynamic>(
                    MyListPage.route(),
                  );
                },
              ),
              ListTile(
                title: const Text("メニュー3"),
                onTap: () {},
              )
            ],
          ),
        ));
  }
}
