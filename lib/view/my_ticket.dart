import 'package:flutter/material.dart';

class MyTicket extends StatelessWidget {
  const MyTicket({Key? key}) : super(key: key);

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
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    '5 Tickets',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 80,
                    child: TextButton(
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 36),
                      ),
                      onPressed: () {},
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
                        text: '12',
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
                  onPressed: () {},
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
