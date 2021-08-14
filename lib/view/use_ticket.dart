import 'package:flutter/material.dart';

class UseTicket extends StatelessWidget {
  const UseTicket({Key? key}) : super(key: key);

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
              Text(
                '購入履歴',
                style: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListTile(
                      title: Text('たこやき'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
