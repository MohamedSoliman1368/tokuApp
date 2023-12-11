import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/itemModel.dart';

class itemInfo extends StatelessWidget {
  const itemInfo({super.key, required this.item, required this.color, });
  final itemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,),
                  child: Text( item.JpName,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),),
                ),
                Text(item.EnName,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight:FontWeight.bold,
                    color: Colors.white,),)
              ],
            ),
          ),
          Spacer(flex: 1,),
          Container(
            color: Colors.black12,
            height: 80,
            width: 70,
            child: IconButton(onPressed: ()  {
              final player = AudioPlayer();
              player.play(AssetSource(item.Sound));
            }, icon: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.play_circle_outline,size: 30,color: Colors.white,),
            ),),
          )
        ],
      ),
    );
  }
}
