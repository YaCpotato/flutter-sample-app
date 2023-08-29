import 'package:flutter/material.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({Key? key, required this.title}) : super(key: key);
  final String title;

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
    );
  }
}
