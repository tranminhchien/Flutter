import 'package:flutter/material.dart';
import 'package:hello_word/core/colors_util.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.074,
            bottom: MediaQuery.of(context).size.height * 0.074,
            left: MediaQuery.of(context).size.width * 0.088,
            right: MediaQuery.of(context).size.width * 0.088),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(76)),
                child: Container(
                  width: 153,
                  height: 153,
                  color: Colors.black12,
                  child: Image.asset(
                    "assets/images/IconRegister.png",
                    width: 65,
                    height: 57,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
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
                         padding:EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(0, 0, 20, 0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "You already have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
