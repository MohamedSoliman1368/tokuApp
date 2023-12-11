import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {required this.color,
      required this.text,
      this.onTap,
      required this.HomeImage});
  String text;
  Color color;
  VoidCallback? onTap;
  String HomeImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                //height: 150,
                //width: 180,
                color: color,
                child: Image.asset(HomeImage)),
            Container(
              alignment: Alignment.center,
              // height: 20,
              // width: 150,
              color: Colors.white54,
              child: Text('$text',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
