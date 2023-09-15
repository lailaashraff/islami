import 'package:flutter/material.dart';

import '../../my_theme.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${content}',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(color: MyTheme.yellowColor),
    );
  }
}
