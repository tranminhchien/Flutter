import 'package:flutter/material.dart';
import 'package:hello_word/screen/home_screen/home_cell/home_cell_widget.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snap"),
        leading: Icon(Icons.check_circle_outline),
        actions: [
          Icon(Icons.check_circle_outline),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) { 
            return HomeCellWidget();
           }, 
           separatorBuilder: (BuildContext context, int index) { 
             return Container(
               width: double.infinity,
               height: 0.5,
               color: Colors.black,
             );
            },
        ),
      ),
    );
  }
}