import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/ChapterDetiles/chapter_detiles_screen.dart';

class ChapterTitleWidget extends StatelessWidget {
String title;
int index;


ChapterTitleWidget(this.title,this.index ,{super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetilesScreen.routName,
        arguments: ChpterDetailesArgo(title, index)
        );

      },
      child: Container(
        alignment: Alignment.center,
      padding: EdgeInsets.all(10),

          child: Text(style: TextStyle(fontSize: 25,color: Colors.black),
              title)),
    );
  }
}
