import 'package:flutter/material.dart';
import './character.dart';
import './my_card.dart';

void main() {
  runApp(const CharacterList());
}

class CharacterList extends StatefulWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  List<Character> characters = [
    Character(name: "Monkey D. Luffy", franchise: "One Piece"),
    Character(name: "Roronoa Zoro", franchise: "One Piece"),
    Character(name: "Itachi Uchiha", franchise: "Naruto"),
    Character(name: "Thor Odinson", franchise: "Marvel"),
    Character(name: "The Spawn", franchise: "Image"),
    Character(name: "Darkseid", franchise: "DC"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Characters list"),
          centerTitle: true,
          backgroundColor: Colors.green[700],
        ),
        body: Column(
          children: characters
              .map((item) => MyCard(
                  item: item,
                  delete: () {
                    setState(() {
                      print(item.toString());
                      characters.remove(item);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
