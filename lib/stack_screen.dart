import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  var color = 1;
  var number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WRAP widget")),
      body: SingleChildScrollView(
        child: Wrap(
            spacing: 10,
            runSpacing: 20,
            direction: Axis.vertical,
            children: getWrapWidget()),
      ),
    );
  }

  List<Widget> getWrapWidget() {
    var list = <Widget>[];
    for (int i = 0; i < number; i++) {
      list.add(Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(10),
        color: color == 1
            ? Colors.red
            : color == 2
                ? Colors.green
                : Colors.blue,
      ));
    }
    return list;
  }
}
