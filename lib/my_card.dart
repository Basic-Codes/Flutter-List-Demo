import 'package:flutter/material.dart';
import './character.dart';

class MyCard extends StatelessWidget {
  final Character item;
  final Function delete;
  const MyCard({Key? key, required this.item, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  item.franchise,
                  style: TextStyle(fontSize: 15.0),
                ),
              ],
            ),
            IconButton(
                onPressed: () => delete(), icon: const Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
