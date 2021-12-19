import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paradise/login/SignIn.dart';
import 'package:paradise/home/home_screen.dart';
import 'SignupCard.dart';

import 'Img.dart';
import 'SigninCard.dart';
import 'constraints.dart';
import '../main.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80.0),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20.0)),
                    width: 70.0,
                    height: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Sign Up",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.auto),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirm password",
                    floatingLabelBehavior: FloatingLabelBehavior.auto),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "By clicking Sign Up you agree to the following "),
                  TextSpan(
                      text: "Terms and Conditions",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.indigo)),
                  TextSpan(text: " withour reservations."),
                ]),
              ),
            ),
            const SizedBox(height: 60.0),
            Align(
              alignment: Alignment.centerRight,
              child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0),
                color: Colors.pink,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Screen()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Sign up".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    const SizedBox(width: 40.0),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 18.0,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            Row(children: [
              Text("Already have an account ? ",
                  style: TextStyle(color: Colors.white)),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
                child: Text("Signin", style: TextStyle(color: Colors.pink)),
              ),
            ]),
          ],
        ),
      ),
    );
    // return Container(
    //   height: MediaQuery.of(context).size.height,
    //   color: Colors.white,
    //   child: Column(
    //     children: [
    //       Stack(
    //         children: [
    //           Container(
    //             height: MediaQuery.of(context).size.height / 2,
    //             color: Kblue,
    //           ),
    //           Img(),
    //           SignupCard(),
    //           Padding(
    //             padding: const EdgeInsets.only(top: 610, left: 70),
    //             child: RaisedButton(
    //                 color: Kblue,
    //                 shape: RoundedRectangleBorder(
    //                     borderRadius: BorderRadius.circular(34)),
    //                 child: Text(
    //                   "Register",
    //                   style: TextStyle(fontSize: 20, color: Colors.white),
    //                 ),
    //                 onPressed: (){
    //                   Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                           builder: (context) => HomeScreen()));
    //                 }),
    //           ),
    //           Row(
    //               children: [
    //                 Text(
    //                     "Already have an account ? ",
    //                     style: TextStyle(color: Colors.black)),
    //                 InkWell(
    //                   onTap: () {
    //                     Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                             builder: (context) => SignUp()));
    //                   },
    //                   child: Text(
    //                       "Signin",
    //                       style: TextStyle(color: Colors.pink)),
    //                 ),
    //               ]
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
