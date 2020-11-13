import 'package:flutter/material.dart';

import 'home_cell/home1_cell_widget.dart';

class Home1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          //  margin: const EdgeInsets.only(right: 75),
          child: Image.asset(
            "assets/images/HomeTitle.png",
          ),
        ),
        backgroundColor: Colors.white,
        leading: ClipOval(
          child: Container(
            width: 35,
            height: 35,
            child: Image.asset(
              "assets/images/Leading.png",
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Home1CellWidget();
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              width: double.infinity,
              height: 1,
              color: Colors.white,
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Bottom1.png'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Bottom2.png'),
               color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Bottom3.png'),
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Bottom4.png'),
               color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Bottom5.png'),
               color: Colors.grey,
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
