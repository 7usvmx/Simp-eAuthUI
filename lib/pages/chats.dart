// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:level1/utilities/chat.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    // Hey, Husam Greeting Bar
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chats",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "22 unread messages",
                            style: TextStyle(
                              color: Colors.blue[100],
                            ),
                          )
                        ],
                      ),
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue[700],
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.blue[700],
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(12.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.amber,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),

            //  Chats

            Expanded(
              child: ClipRRect(
                // borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Exersices Heading
                            Text(
                              "All Chats",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.blue,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: ListView(
                          children: [
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 8),
                            Chat(
                                img: "assests/images/profile.png",
                                msg: "Message will show here",
                                name: "Husam Abdallah"),
                            SizedBox(height: 25),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
