import 'package:flutter/material.dart';
import 'package:islami_app/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0;
  List<String> tasbeh = [
    'سُبْحَانَ اللَّهِ',
    'أستغفر الله',
    'الْلَّهُ أَكْبَرُ',
    'لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ',
    'لَا إِلَهَ إِلَّا اللَّهُ',
  ];
  int ListIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.09,
                ),
                child: Center(
                  child: Image.asset('assets/images/sebha_head.png'),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1,
                      bottom: MediaQuery.of(context).size.height * 0.04),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        rotationAngle += 30;
                      });
                      onSebhaTab();
                    },
                    child: Transform.rotate(
                        angle: rotationAngle *
                            (3.14159265359 /
                                180), // Convert degrees to radians,
                        child: Image.asset('assets/images/sebha.png')),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'Tasbeeh Count',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          width: MyTheme.counterWidth,
          height: MyTheme.counterHeight,
          decoration: BoxDecoration(
              color: MyTheme.primaryColor.withOpacity(0.57),
              borderRadius: BorderRadius.circular(25)),
          child: Center(
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        Wrap(children: [
          Container(
            width: MyTheme.duaWidth,
            // height: MyTheme.duaHeight,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                tasbeh[ListIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: MyTheme.whiteColor,
                ),
              ),
            ),
          ),
        ])
      ],
    );
  }

  void onSebhaTab() {
    ++counter;
    if (counter % 33 == 0) {
      ListIndex++;
      if (ListIndex > 4) {
        ListIndex = 0;
      }
    }
    setState(() {});
  }
}
