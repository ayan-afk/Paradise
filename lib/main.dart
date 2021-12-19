import 'package:flutter/material.dart';
import 'widgets/board_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          board_page(
              "assets/images/image1.jpg",
              "Buy Cakes and Pastries from Paradise",
              "Browse your choice of Cakes and Pastries and more.",
              _controller,
              false,
              context),
          board_page(
              "assets/images/image2.jpg",
              "Buy Pizzas and Burgers from Paradise",
              "Browse your choice of Pizzas and Burgers and more.",
              _controller,
              false,
              context),
          board_page(
              "assets/images/image3.jpg",
              "Buy Any Food from Paradise",
              "Browse Premium Quality Food from Paradise only.",
              _controller,
              true,
              context),
        ],
      ),
    );
  }
}
