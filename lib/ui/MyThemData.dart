import 'package:flutter/material.dart';

class MyThemdata extends StatelessWidget {
  static bool isDarkEnable =true;
  static Color lightPrimary=Color(0xffB7935F);
  static Color darkPrimary=Color(0xff141A2E);
  static Color darkSecondry=Color(0xff5a9424);



  static ThemeData LightThem = ThemeData(
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize:14,
        color: Colors.black,
      ),
          bodyLarge: TextStyle(
        fontSize: 25,
            color: Colors.black,
    ),
    ),

  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 28,
        color: Colors.white,

      )
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xffB7935F),
    primary: Color(0xffB7935F),
    onPrimary: Colors.white,
    secondary: Color(0xffB7935F),

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white,
  ),
  cardColor: Colors.white,
  useMaterial3: true,
    dividerColor: lightPrimary
);
static ThemeData DarkThem=ThemeData(textTheme:TextTheme(
  bodyMedium: TextStyle(
    fontSize:14,
    color: Colors.white,
  ),
  bodyLarge: TextStyle(
    fontSize: 25,
    color: Colors.white,
  ),
) ,


  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 28,
        color: Colors.white,

      )
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: darkPrimary,
    primary: darkPrimary,
    onPrimary: darkPrimary,
    secondary: darkPrimary,

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: darkPrimary,
    unselectedItemColor: Colors.white,
  ),
  cardColor: darkSecondry,
  useMaterial3: true,
  dividerColor: Colors.yellowAccent
);
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
