import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/HadethDetailes/Hadeth_details_screen.dart';
import 'package:test_islam_app/ui/MyThemData.dart';
import 'package:test_islam_app/ui/home/Tasbeh/tasbeh_tab.dart';
import 'package:test_islam_app/ui/home/home_screen.dart';

import 'ui/ChapterDetiles/chapter_detiles_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemdata.DarkThem,
      themeMode:ThemeMode.dark,
      routes: {
        HomeScreen.routName:(_)=>HomeScreen(),
        ChapterDetilesScreen.routName:(context)=>ChapterDetilesScreen(),
        HadethDetailsScreen.routName:(context)=>HadethDetailsScreen(),
        TasbehTab.routName:(context)=>TasbehTab()
      },
      initialRoute: HomeScreen.routName,

    );
  }
}


