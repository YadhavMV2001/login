// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/view/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController nameController2 = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.pexels.com/photos/4207776/pexels-photo-4207776.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 26, 28),
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Color.fromARGB(255, 95, 108, 119),
                      filled: true,
                      labelText: "Email",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  controller: nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fillColor: Color.fromARGB(255, 95, 108, 119),
                      filled: true,
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  controller: nameController2,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
