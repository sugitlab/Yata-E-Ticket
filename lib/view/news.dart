import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: Image.network(
                'https://cdn.activityboard.jp/KR00120322/pictures/l000034D18/P00019C0B7.jpg?v=1&size=pict320_240'),
            title: const Text('タイムセール!! たこやき2個増量!!'),
            subtitle: const Text('ブース A-2 たこやきやっちゃん'),
            trailing: const Padding(
              child: Icon(Icons.pin_drop, size: 32, color: Colors.blueGrey),
              padding: EdgeInsets.symmetric(horizontal: 8),
            ),
          );
        },
      ),
    );
  }
}
