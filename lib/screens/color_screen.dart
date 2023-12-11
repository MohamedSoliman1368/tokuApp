import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/itemModel.dart';

class colorScreen extends StatelessWidget {
  const colorScreen({super.key});
  final List<itemModel> colorsList = const [
    itemModel(
        Image: 'assets/images/colors/color_black.png',
        Sound: 'sounds/colors/black.wav',
        JpName: 'Kuro',
        EnName: 'black'),
    itemModel(
      Sound: 'sounds/colors/dustyyellow.wav',
      JpName: 'Dasutiierō',
      EnName: 'dusty yellow',
      Image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    itemModel(
      Sound: 'sounds/colors/gray.wav',
      JpName: 'Gurē',
      EnName: 'gray',
      Image: 'assets/images/colors/color_gray.png',
    ),
    itemModel(
      Sound: 'sounds/colors/green.wav',
      JpName: 'Midori',
      EnName: 'green',
      Image: 'assets/images/colors/color_green.png',
    ),
    itemModel(
      Sound: 'sounds/colors/red.wav',
      JpName: 'Aka',
      EnName: 'red',
      Image: 'assets/images/colors/color_red.png',
    ),
    itemModel(
      Sound: 'sounds/colors/white.wav',
      JpName: 'Shiro',
      EnName: 'white',
      Image: 'assets/images/colors/color_white.png',
    ),
    itemModel(
      Sound: 'sounds/colors/yellow.wav',
      JpName: 'Kiiro',
      EnName: 'yellow',
      Image: 'assets/images/colors/yellow.png',
    ),
    itemModel(
      Sound: 'sounds/colors/brown.wav',
      JpName: 'Chairo',
      EnName: 'brown',
      Image: 'assets/images/colors/color_brown.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: colorsList[index],
            color: Colors.teal,
          );
        },
      ),
    );
  }
}
