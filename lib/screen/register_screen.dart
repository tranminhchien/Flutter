import 'package:flutter/material.dart';
import 'package:hello_word/core/colors_util.dart';

class Register extends StatelessWidget {
  int _indexLayer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.074,
          bottom: MediaQuery.of(context).size.height * 0.074, //
          left: 30,
          //MediaQuery.of(context).size.width * 0.088,
          right:30,
          // MediaQuery.of(context).size.width * 0.088, //25/812
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 153,
                  height: 176.3,
                ),
                Container(
                  //color: Colors.red,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(76),
                      ),
                      child: Container(
                        width: 153,
                        height: 153,
                        color: Colors.black.withOpacity(0.07),
                        child: Image.asset(
                          "assets/images/IconRegister.png",
                          // width: 65,
                          // height: 57,
                           fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ),
                ),
              Positioned(
                //top: ,
                left: 0,
                right:0,
                bottom: 0,
                child: GestureDetector(
                  onTap: (){
                    print("object");
                  },
                  child: Container(
                    height: 46,
                    //color: Colors.blue,
                    child: Image.asset("assets/images/IconPlus.png"),
                  ),
                ),
              ),
              // Positioned(
              //   // top: ,
              //   // left: ,
              //   // right: ,
              //   // bottom: ,
              //   child: Image.asset("assets/images/IconPlus.png"),
              // ),
              // Positioned(
              //   // top: ,
              //   // left: ,
              //   // right: ,
              //   // bottom: ,
              //   child: Image.asset("assets/images/IconPlus.png"),
              // ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.109),
            TextField(
              decoration: InputDecoration(
                hintText: "Please input your name",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey[300]),
                labelText: "Name",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Please input your email",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey[300]),
                labelText: "Email",
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Please input your password",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey[300]),
                labelText: "Password",
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Please input your confirm",
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey[300]),
                labelText: "Confirm Password",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.048),
            GestureDetector(
              onTap: () {
                print("eeeee");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Container(
                  width: double.infinity,
                  height: 53,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          HexColor.fromHex("F58524"),
                          HexColor.fromHex("F92B7F")
                        ]),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Center(
                          child: Image.asset(
                            "assets/images/IconSmall.png",
                            width: 25,
                            height: 25,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0369),
            // Container(
            //   child: Text.rich(
            //     TextSpan(
            //       children: [
            //         TextSpan(
            //           text: "You already have an account?",
            //         ),
            //         TextSpan(
            //           text: "Login",
            //           style: TextStyle(color: Colors.red),
            //         ),
            //       ],

            //     ),
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: Container(
              color: Colors.red,
              child: Wrap(
                  children: [
                    Text(
                      "You already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      "You already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.red),
                    ),
                    Text(
                      "You already have an account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
              ),
            ),
                ),
                Icon(Icons.check_circle_outline),
              ],
            ),
            
            // Container(
            //   color: Colors.red,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //  Text(
            //   "You already have an account?",
            //   style: TextStyle(color: Colors.black),
            // ),
            // Text(
            //   "Login",
            //   style: TextStyle(color: Colors.red),
            // ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
