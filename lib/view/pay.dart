import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Pay extends StatelessWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
              const Text(
                'PAY',
                style: TextStyle(fontSize: 64),
              ),
              QrImage(
                data: '123456789',
                version: QrVersions.auto,
                size: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
