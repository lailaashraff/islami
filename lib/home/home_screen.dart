import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio/radio_tab.dart';
import 'package:islami_app/home/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.app_title,
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Theme.of(context).primaryColor),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_moshaf.png'),
                      ),
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_hadeth.png'),
                      ),
                      label: AppLocalizations.of(context)!.hadith),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_sebha.png'),
                      ),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/icon_radio.png'),
                      ),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings)
                ],
              ),
            ),
            body: tabs[selectedIndex]),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
