import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/item_hadeth_details.dart';
import 'package:islami_app/home/quran/item_sura_details.dart';
import 'package:islami_app/my_theme.dart';
import 'package:provider/provider.dart';

import '../../provider/app_config_provider.dart';
import 'hadeth_tab.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = 'hadeth-details-screen';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      provider.isDarkMode()
          ? Image.asset(
              'assets/images/main_background_dark.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            )
          : Image.asset(
              'assets/images/main_background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.title}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? MyTheme.primaryDark
                : MyTheme.primaryColor,
            borderRadius: BorderRadius.circular(24),
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.07,
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemHadethDetails(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      )
    ]);
  }
}
