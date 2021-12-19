import 'package:flutter/material.dart';
import 'SigninCard.dart';
import 'constraints.dart';
import '../main.dart';

class SignupCard extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 300, left: 20, right: 20),
      height: 380,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
