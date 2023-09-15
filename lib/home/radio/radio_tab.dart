import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';
import '../../provider/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

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
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow_sharp,
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next_sharp,
                color: provider.isDarkMode()
                    ? MyTheme.yellowColor
                    : Theme.of(context).primaryColor,
                size: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}
