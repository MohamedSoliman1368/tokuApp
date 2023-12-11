import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/phrasesModel.dart';

import '../models/itemModel.dart';

class phrasesScreen extends StatelessWidget {
  const phrasesScreen({super.key});
  final List<itemModel> phrasesList = const [
    itemModel(
      EnName: 'are you coming',
      JpName: 'Kimasu ka',
      Sound: 'sounds/phrases/are_you_coming.wav',
    ),
    itemModel(
      EnName: 'i love anime',
      JpName: 'Watashi wa anime ga daisukidesu',
      Sound: 'sounds/phrases/i_love_anime.wav',
    ),
    itemModel(
      EnName: 'what is your name',
      JpName: 'Anata no namae wa nandesuka',
      Sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    itemModel(
      EnName: 'how are you feeling',
      JpName: 'Go kibun wa ikagadesu ka',
      Sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    itemModel(
      EnName: 'yes I am coming',
      JpName: 'Hai, kimasu',
      Sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    itemModel(
      EnName: 'dont forget to subscribe',
      JpName: 'Kōdoku suru koto o wasurenaide kudasai',
      Sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    itemModel(
      EnName: 'programming is easy',
      JpName: 'Puroguramingu wa kantandesu',
      Sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    itemModel(
      EnName: 'I love programming',
      JpName: 'Puroguramingu ga daisukidesu',
      Sound: 'sounds/phrases/i_love_programming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (BuildContext context, int index) {
          return phrasesItem(
            item: phrasesList[index],
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
