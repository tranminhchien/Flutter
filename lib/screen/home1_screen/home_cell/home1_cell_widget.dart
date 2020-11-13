import 'package:flutter/material.dart';
import 'package:hello_word/core/colors_util.dart';

class Home1CellWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 10, 17, 10),
          child: Row(
            children: [
              ClipOval(
                child: Container(
                  width: 45,
                  height: 45,
                  color: Colors.amber,
                  child: Image.asset(
                    "assets/images/AvatarCell.png",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Baxter Johnson",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text("5:30 PM"),
                    ],
                  ),
                ),
              ),
              //Expanded(child: SizedBox()),
              ClipOval(
                child: Container(
                  width: 30,
                  height: 30,
                  color: HexColor.fromHex("F75356").withOpacity(0.2),
                  child: Image.asset(
                    "assets/images/Share.png",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              SizedBox(height: 18),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.28,
          color: Colors.red,
          child: Image.asset(
            "assets/images/NewFeed.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: double.infinity,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 18, 10, 16),
              child: Row(
                children: [
                  Container(
                    width: 19,
                    height: 19,
                    child: Image.asset(
                      "assets/images/Bones.png",
                      width: double.infinity,
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "42 Bones",
                  ),
                  SizedBox(width: 46),
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      "assets/images/Snaps.png",
                      width: double.infinity,
                      fit: BoxFit.none,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "20 Snaps",
                  ),
                ],
              ),
            )),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(10, 18, 10, 16),
          child:  Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed eiusmod tempor amet sed eiusmod tempor amet sed eiusmod tempor amet sed eiusmod tempor amet ",
                        style: TextStyle(fontSize: 16),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
        ),
      ],
    );
  }
}
