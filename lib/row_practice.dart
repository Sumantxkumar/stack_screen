import 'package:flutter/material.dart';

class RowPractice extends StatefulWidget {
  const RowPractice({super.key});

  @override
  State<RowPractice> createState() => _RowPracticeState();
}

class _RowPracticeState extends State<RowPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Practice"),
      ),
      body: Column(
        children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("This si snackbar"),
                    ));
                  },
                  child: Text("1234"))),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(width: 40, color: Colors.black)),
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  textAlign: TextAlign.justify,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVestibulum congue quam quis ante mollis blandit. Nunc elementum libero ipsum, eget tincidunt eros sollicitudin id. Integer cursus arcu eu interdum porta. Etiam id ante hendrerit, mollis diam ac, vulputate enim. Vivamus hendrerit interdum sem, nec bibendum orci finibus a. Curabitur faucibus consectetur nibh. Vivamus sit amet dui at mauris scelerisque imperdiet et eget ante. Sed eget tincidunt metus, eu bibendum arcu. Donec a rutrum libero."),
            ),
          )
        ],
      ),
    );
  }
}
