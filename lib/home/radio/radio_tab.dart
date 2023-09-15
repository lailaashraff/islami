import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/radio.png'),
        Text(
          AppLocalizations.of(context)!.quranRadio,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous_sharp,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_sharp,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_sharp,
                color: Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}
