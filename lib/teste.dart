import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Hello'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_alert)),
          IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))
        ],
      ),
    );
  }
}
