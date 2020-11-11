import 'package:flutter/material.dart';

class HomeCellWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      // decoration: BoxDecoration(
      //   border: Border(bottom: BorderSide(color:Colors.black,width: 0.5))
      // ),
      child: Row(
        children: [
          ClipOval(
            child: Container(
              width: 45,
              height: 45,
              color: Colors.amber,
            ),
          ),
          SizedBox(width:5),
          Expanded(
            child: Container(
              //color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Apollo Phelps",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text("Live, Love, Bark"),
                ],
              ),
            ),
          ),
          //Expanded(child: SizedBox()),
          Text("5:30 PM"),
        ],
      ),
    );
  }
}