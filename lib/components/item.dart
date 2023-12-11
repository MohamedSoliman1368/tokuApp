import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item_info.dart';
import 'package:toku/models/itemModel.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.item,
    required this.color,
  });
  final itemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, bottom: 1),
      child: Container(
        height: 80,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 80,
              child: Image.asset(item.Image!),
            ),
            Expanded(
                child: itemInfo(
              item: item,
              color: color,
            ))
          ],
        ),
      ),
    );
  }
}
