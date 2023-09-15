import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethLines = [];

  @override
  Widget build(BuildContext context) {
    if (hadethLines.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadethlogo.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadithName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: hadethLines.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 3,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(hadeth: hadethLines[index]);
                  },
                  itemCount: hadethLines.length),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String ahadeethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = ahadeethContent.split('#\r\n');
    for (int i = 0; i < ahadethList.length; i++) {
      // print(ahadethList[i]);
      List<String> ahadethLines = ahadethList[i].split('\n');
      String title = ahadethLines[0];
      ahadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: ahadethLines);
      hadethLines.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
