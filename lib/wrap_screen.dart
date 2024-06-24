import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({super.key});

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  var numberController = TextEditingController();
  var color = 1;
  var number = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color = 1;
                      });
                    },
                    child: Text("Red")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color = 2;
                      });
                    },
                    child: Text("Green")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        color = 3;
                      });
                    },
                    child: Text("Blue")),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: numberController,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (numberController.text.isEmpty) {
                        //toast
                        return;
                      }
                      number = int.parse(numberController.text.toString());
                      setState(() {});
                    },
                    child: Text("Apply"))
              ],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 20,
              direction: Axis.horizontal,
              children: getWrapWidget(),
            ),
          ],
        ),
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
