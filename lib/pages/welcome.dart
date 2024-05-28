import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset("assests/images/main_top.png"),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset("assests/images/main_bottom.png"),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Here in SVG login image
                Container(
                  child: SvgPicture.asset(
                    "assests/icons/chat.svg",
                    height: 300,
                    width: 300,
                  ),
                ),
                // Here is Buttons for signup or login
                Container(
                  child: Column(
                    children: [
                      // Login Button
                      Container(
                        decoration: BoxDecoration(),
                        margin: EdgeInsets.only(top: 30),
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[200],
                            padding: EdgeInsets.all(15),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "OR",
                        style: TextStyle(color: Colors.purple),
                      ),
                      SizedBox(height: 15),
                      // Signup Button
                      Container(
                        decoration: BoxDecoration(),
                        // margin: EdgeInsets.only(top: 30),
                        width: 300,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple[200],
                            padding: EdgeInsets.all(15),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
