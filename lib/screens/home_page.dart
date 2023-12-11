import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/category_items.dart';
import 'package:toku/screens/color_screen.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_screen.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('Learn Japanese',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Category(
                        color: Colors.deepPurple,
                        text: 'Numbers',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return NumberScreen();
                          }));
                        },
                        HomeImage: 'assets/images/home_screen/numbers.png',
                      ),
                    ),
                    Expanded(
                      child: Category(
                        color: Colors.red,
                        text: 'Family Members',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return familyScreen();
                          }));
                        },
                        HomeImage: 'assets/images/home_screen/family.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Category(
                        color: Colors.teal,
                        text: 'Colors',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return colorScreen();
                          }));
                        },
                        HomeImage: 'assets/images/home_screen/colors.png',
                      ),
                    ),
                    Expanded(
                      child: Category(
                        color: Colors.orange,
                        text: 'Phrases',
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return phrasesScreen();
                          }));
                        },
                        HomeImage: 'assets/images/home_screen/phrases.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/images/home_screen/download.png',
            ),
          ],
        ));
  }
}
