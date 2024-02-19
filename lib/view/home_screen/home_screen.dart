// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/YADHAV.jpg"),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Main Account",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.expand_more)
              ],
            ),
            Text(
              "13.458 ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("Current Balance")
              ],
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 212, 176, 253),
                  ),
                  child: Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 212, 176, 253),
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 241, 230, 253),
                  ),
                  child: Center(child: Text("Split a purchase")),
                ),
              ],
            ),
            Text(
              "Recent events",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Image(
                      image: AssetImage("assets/yadh.jpg"), fit: BoxFit.cover),
                  title: Text(
                    "NIKE SHOP",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Text(
                    "-62.094",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Image(
                    image: AssetImage("assets/12345.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "STARBUCKS",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Text(
                    "-6,00",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Image(
                    image: AssetImage("assets/123.jpg"),
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "Anna Johnson",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 123, 35, 139)),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 241, 230, 253)),
                    child: Text(
                      "-50,00",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Image(
                    image: AssetImage("assets/1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "From SAVINGS",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 241, 230, 253)),
                    child: Text(
                      "25,00",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Recent events",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Image(
                    image: AssetImage("assets/12.png"),
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "McDonald's",
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Text(
                    "-12,37",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.sms_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart_outline,
              size: 30,
              color: Colors.black,
            ),
            label: ""),
      ]),
    );
  }
}
