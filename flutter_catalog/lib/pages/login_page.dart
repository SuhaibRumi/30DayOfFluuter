import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "User name",
                    labelStyle: TextStyle(fontSize: 18),
                    hintText: "Enter your user name",
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 18),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Hi Suhaib");
                    },
                    child: const Text("Login")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
