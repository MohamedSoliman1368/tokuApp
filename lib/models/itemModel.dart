import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';

class itemModel{
  final String? Image;
  final String JpName;
  final String EnName;
  final String Sound;
  const itemModel( { this.Image,required this.JpName,required this.EnName,required this.Sound});

   playAudio(){
    final player = AudioPlayer();
    player.play(AssetSource(Sound));

  }
}