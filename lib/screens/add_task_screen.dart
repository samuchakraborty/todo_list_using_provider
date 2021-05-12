import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addToTaskCallback;
  AddTaskScreen({this.addToTaskCallback});

  @override
  Widget build(BuildContext context) {
    String textField;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add To Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              // decoration: InputDecoration(
              //   border: OutlineInputBorder(),
              // ),
              onChanged: (value) {
                textField = value;
              },
            ),
            TextButton(
              onPressed: () {
                addToTaskCallback(textField);
              },
              child: Text('Add to task'),
            ),
          ],
        ),
      ),
    );
  }
}
