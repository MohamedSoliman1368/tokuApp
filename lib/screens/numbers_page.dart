import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/itemModel.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});
  final List<itemModel> NumbersList = const [
    itemModel(
        Image: 'assets/images/numbers/number_one.png',
        Sound: 'sounds/numbers/number_one_sound.mp3',
        JpName: 'ichi',
        EnName: 'one'),
    itemModel(
      Sound: 'sounds/numbers/number_two_sound.mp3',
      JpName: 'Ni',
      EnName: 'two',
      Image: 'assets/images/numbers/number_two.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_three_sound.mp3',
      JpName: 'San',
      EnName: 'three',
      Image: 'assets/images/numbers/number_three.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_four_sound.mp3',
      JpName: 'Shi',
      EnName: 'four',
      Image: 'assets/images/numbers/number_four.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_five_sound.mp3',
      JpName: 'Go',
      EnName: 'five',
      Image: 'assets/images/numbers/number_five.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_six_sound.mp3',
      JpName: 'Roku',
      EnName: 'six',
      Image: 'assets/images/numbers/number_six.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_seven_sound.mp3',
      JpName: 'Sebun',
      EnName: 'seven',
      Image: 'assets/images/numbers/number_seven.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_eight_sound.mp3',
      JpName: 'hachi',
      EnName: 'eight',
      Image: 'assets/images/numbers/number_eight.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_nine_sound.mp3',
      JpName: 'Kyū',
      EnName: 'nine',
      Image: 'assets/images/numbers/number_nine.png',
    ),
    itemModel(
      Sound: 'sounds/numbers/number_ten_sound.mp3',
      JpName: 'Jū',
      EnName: 'ten',
      Image: 'assets/images/numbers/number_ten.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: NumbersList.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: NumbersList[index],
            color: Colors.deepPurple,
          );
        },
      ),
    );
  }
}
