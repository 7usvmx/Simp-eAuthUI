// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assests/images/login_bottom.png"),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Text("Sign up with us! It's Free"),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 250,
                          height: 250,
                          child: SvgPicture.asset(("assests/icons/signup.svg")),
                        ),
                        // Email Text Field
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.purple[300],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Colors.white,
                              ),
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                              hintText: "Email",
                              hintFadeDuration: Duration(milliseconds: 300),
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        // Password Text Field
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.purple[300],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintFadeDuration: Duration(milliseconds: 300),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                  )),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        // Password Again Text Field
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.purple[300],
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: InputBorder.none,
                              hintText: "Re-type password",
                              hintFadeDuration: Duration(milliseconds: 300),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Colors.white,
                                  )),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        // Sign up button
                        Container(
                          decoration: BoxDecoration(),
                          // margin: EdgeInsets.only(top: 30),
                          width: 300,
                          margin: EdgeInsets.only(top: 25),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple[200],
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        // have an account ?
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" Have and account ? "),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  Navigator.popAndPushNamed(context, "/login");
                                },
                                child: Text(
                                  "Signin",
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Divider(
                                  height: 1.0,
                                  color: Colors.purple[300],
                                  thickness: 2.0,
                                ),
                              ),
                              Text(
                                "   OR   ",
                                style: TextStyle(color: Colors.purple),
                              ),
                              Expanded(
                                child: Divider(
                                  height: 1.0,
                                  color: Colors.purple[300],
                                  thickness: 2.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 2),
                              ),
                              child: SvgPicture.asset(
                                "assests/icons/facebook.svg",
                                color: Colors.blue[900],
                                width: 12,
                                height: 22,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 2),
                              ),
                              child: SvgPicture.asset(
                                "assests/icons/twitter.svg",
                                color: Colors.blue[500],
                                width: 12,
                                height: 22,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.purple, width: 2),
                              ),
                              child: SvgPicture.asset(
                                "assests/icons/google-plus.svg",
                                color: Colors.red,
                                width: 12,
                                height: 22,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
