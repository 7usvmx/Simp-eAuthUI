// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:level1/utilities/emojies.dart';
import 'package:level1/utilities/ex_tailers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            label: "Home",
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/chats");
                },
                icon: Icon(Icons.chat)),
            label: "Chats",
            tooltip: "Chats with friends",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/quotes");
                },
                icon: Icon(Icons.format_quote_outlined)),
            label: "Quotes",
            tooltip: "Read some Quotes",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        onTap: _onItemTapped,
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
                            "Hey, Husam!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "22 Jan 2024",
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
                  // Emotional faces Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel today ?",
                        style: TextStyle(
                          color: Colors.blue[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  // Chose Feelings Section
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Bad
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              EmoIconFace(
                                emoFace: "😞",
                              ),
                              SizedBox(height: 8.0),
                              Text("Bad", style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        // Fine
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              EmoIconFace(
                                emoFace: "🙂",
                              ),
                              SizedBox(height: 8.0),
                              Text("Fine",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        // Well
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              EmoIconFace(
                                emoFace: "😁",
                              ),
                              SizedBox(height: 8.0),
                              Text("Well",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                        // Excellent
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              EmoIconFace(
                                emoFace: "🥳",
                              ),
                              SizedBox(height: 8.0),
                              Text("Excellent",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //  Excersise
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Exersices Heading
                              Text(
                                "Excercises",
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
                        SizedBox(
                          height: 20,
                        ),
                        // This is Skills cards
                        Expanded(
                          child: ListView(
                            children: [
                              ExTailers(
                                color: Colors.greenAccent,
                                icon: Icons.code,
                                exTitle: "Back-end",
                                exDetails: "9 projects",
                              ),
                              ExTailers(
                                color: Colors.amber[500],
                                icon: Icons.design_services,
                                exTitle: "Front-end",
                                exDetails: "+20 projects",
                              ),
                              ExTailers(
                                color: Color.fromARGB(255, 200, 31, 212),
                                icon: Icons.api,
                                exTitle: "API integration",
                                exDetails: "7 big API integration projects",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
