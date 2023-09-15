import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;
  int index;

  ItemSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${content} (${index + 1}) ',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: MyTheme.yellowColor),
    );
  }
}
