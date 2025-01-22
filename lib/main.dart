import 'package:flutter/material.dart';
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
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 28,
              color: Colors.black,

            )
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xffB7935F),
                primary: Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffBb935F)

        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
        cardColor: Colors.white,
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routName:(_)=>HomeScreen(),
        ChapterDetilesScreen.routName:(context)=>ChapterDetilesScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}


