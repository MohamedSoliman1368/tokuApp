import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/itemModel.dart';

class familyScreen extends StatelessWidget {
  const familyScreen({super.key});
  final List<itemModel> familyList = const [
    itemModel(
        Image: 'assets/images/family_members/family_father.png',
        Sound: 'sounds/family_members/father.wav',
        JpName: 'Chichioya',
        EnName: 'father'),
    itemModel(
      Sound: 'sounds/family_members/mother.wav',
      JpName: 'Hahaoya',
      EnName: 'mother',
      Image: 'assets/images/family_members/family_mother.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/grandfather.wav',
      JpName: 'Ojīsan',
      EnName: 'grandfather',
      Image: 'assets/images/family_members/family_grandfather.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/grmother.wav',
      JpName: 'O bāchan',
      EnName: 'grandmother',
      Image: 'assets/images/family_members/family_grandmother.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/son.wav',
      JpName: 'Musuko',
      EnName: 'son',
      Image: 'assets/images/family_members/family_son.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/daughter.wav',
      JpName: 'Musume',
      EnName: 'daughter',
      Image: 'assets/images/family_members/family_daughter.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/oldbother.wav',
      JpName: 'Ani',
      EnName: 'older brother',
      Image: 'assets/images/family_members/family_older_brother.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/oldsister.wav',
      JpName: 'Ane',
      EnName: 'older sister',
      Image: 'assets/images/family_members/family_older_sister.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/youngbrohter.wav',
      JpName: 'Otōto',
      EnName: 'younger brohter',
      Image: 'assets/images/family_members/family_younger_brother.png',
    ),
    itemModel(
      Sound: 'sounds/family_members/youngsister.wav',
      JpName: 'Imōto',
      EnName: 'younger sister',
      Image: 'assets/images/family_members/family_younger_sister.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (BuildContext context, int index) {
          return Item(
            item: familyList[index],
            color: Colors.red,
          );
        },
      ),
    );
  }
}
