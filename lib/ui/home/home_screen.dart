import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/MyThemData.dart';
import 'package:test_islam_app/ui/home/Hadeth/hadeth_tab.dart';
import 'package:test_islam_app/ui/home/Quran/quran_tab.dart';
import 'package:test_islam_app/ui/home/Radio/radio_tab.dart';
import 'package:test_islam_app/ui/home/Setting/setting_tab.dart';
import 'package:test_islam_app/ui/home/Tasbeh/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedTabIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(


        image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(
              MyThemdata.isDarkEnable ?'assets/images/dark_bg.png':
                'assets/images/default_bg.png'))
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('islami'),



        ),

        bottomNavigationBar:
        BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedTabIndex=index;

              });
            },
            backgroundColor: Theme.of(context).primaryColor,
            items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/qur2an_screen_logo.png'),),label: 'Quran'),
          BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),label: 'Hadeth'),
          BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),label: 'Tasbeh'),
              BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/radio_image.png'),),label: 'Radio'),

BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,
    icon: Icon(Icons.settings),label: 'settings'),
            ]),
        body: tabs[selectedTabIndex]
      ),
    );

  }
  List<Widget>tabs=[
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingTab(),
  ];
}
