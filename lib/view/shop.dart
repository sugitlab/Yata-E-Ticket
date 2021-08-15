import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Chip(
                            backgroundColor: Colors.cyan,
                            label: Text(
                              'Event',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Chip(
                            backgroundColor: Colors.orange,
                            label: Text(
                              'food',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Chip(
                            backgroundColor: Colors.lime,
                            label: Text(
                              'Activity',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Chip(
                            backgroundColor: Colors.pink,
                            label: Text(
                              'Snack',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 300,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image.network(
                        'https://video.kurashiru.com/production/videos/7da548af-7c75-48c8-b336-510869540bc1/compressed_thumbnail_square_large.jpg?1484115722'),
                    title: const Text('美味しいたこ焼きやっちゃん'),
                    subtitle: const Text('ブース A-2'),
                    trailing: const Padding(
                      child: Icon(Icons.pin_drop,
                          size: 32, color: Colors.blueGrey),
                      padding: EdgeInsets.symmetric(horizontal: 8),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
