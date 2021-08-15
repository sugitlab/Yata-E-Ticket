import 'package:flutter/material.dart';
import './pay.dart';

class MyTicket extends StatefulWidget {
  const MyTicket({Key? key}) : super(key: key);

  @override
  _MyTicket createState() => _MyTicket();
}

class _MyTicket extends State<MyTicket> {
  int count = 0;
  int youhave = 12;

  void increment() {
    if (count < youhave) {
      setState(() {
        count++;
      });
    }
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: 400,
          width: 300,
          child: Column(
            children: [
              Ink.image(
                image: const AssetImage('assets/obon.png'),
                height: 200,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    child: TextButton(
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 36),
                      ),
                      onPressed: count == youhave
                          ? null
                          : () {
                              increment();
                            },
                    ),
                  ),
                  Text(
                    '$count Tickets',
                    style: const TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextButton(
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 36),
                      ),
                      onPressed: count == 0
                          ? null
                          : () {
                              decrement();
                            },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'you have... ',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      TextSpan(
                        text: (youhave - count).toString(),
                        style: TextStyle(
                            fontSize: 28,
                            color: Theme.of(context).primaryColor),
                      ),
                      const TextSpan(
                        text: ' tickets',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const Pay();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'PAY',
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
