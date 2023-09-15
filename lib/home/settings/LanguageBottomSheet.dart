import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                Icon(
                  Icons.check,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Arabic',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ],
    );
  }
}
