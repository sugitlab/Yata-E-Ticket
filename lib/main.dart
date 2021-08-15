import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import './view/my_ticket.dart';
import './view/use_ticket.dart';
import './view/news.dart';
import './view/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YATA E-Ticket',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.tekoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int currentPage = 1;
  void _onBnbTapped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  List<Widget> pages = [
    const Shop(),
    const Center(
      child: FlipCard(
        front: MyTicket(),
        back: UseTicket(),
      ),
    ),
    const News(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Yata E-Ticket',
            style: GoogleFonts.teko(
              textStyle: const TextStyle(fontSize: 48, color: Colors.grey),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.grey),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1261278455842271232/4TQJWEPG_400x400.jpg'),
              ),
            ),
          ]),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBnbTapped,
        currentIndex: currentPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'news',
          ),
        ],
      ),
    );
  }
}
