// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:login/view/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController nameController2 = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://cdn.dribbble.com/users/11473200/screenshots/19912759/media/7753309af4f3f3cef2e0ad109592706b.png?resize=1000x750&vertical=center"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              key: formKey,
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
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "The field is empty";
                      }
                    },
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
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return "The field is empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        }
                      },
                      child: Text("Login"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
