import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Category"),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Description"),
              maxLines: 2,
            ),

            //todo: icon picker
          ],
        ),
      ),
    );
  }
}