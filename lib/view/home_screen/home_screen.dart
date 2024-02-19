// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              children: [Icon(Icons.remove_red_eye), Text("Current Balance")],
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
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
                      color: Colors.purple,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
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
                height: 60,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Text("image"),
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
                height: 60,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Text("image"),
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
                height: 60,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Text("image"),
                  title: Text(
                    "Anna Johnson",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  subtitle: Text("17 Oct"),
                  trailing: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Text(
                      "-62.094",
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
                height: 60,
                decoration: BoxDecoration(border: Border.all()),
                child: ListTile(
                  leading: Text("image"),
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
          ],
        ),
      ),
    );
  }
}
