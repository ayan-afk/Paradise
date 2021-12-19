import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:paradise/login/SignIn.dart';

Widget board_page(String img_path, String title, String desc,
    PageController controller, bool isLast, BuildContext context) {
  TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
  );
  TextStyle descStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(img_path),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.luminosity),
      ),
    ),
    padding: EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(desc, style: descStyle),
        SizedBox(
          height: 64.0,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: RawMaterialButton(
            onPressed: () {
              if (isLast) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignIn()));
              } else {
                controller.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }
            },
            fillColor: Colors.red[600],
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 64.0,
            ),
            shape: StadiumBorder(),
            child: Text(
              isLast ? "Get Started!" : "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
      ],
    ),
  );
}
