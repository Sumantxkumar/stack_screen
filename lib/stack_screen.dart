import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WRAP widget")),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 10,
          runSpacing: 20,
          direction: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
