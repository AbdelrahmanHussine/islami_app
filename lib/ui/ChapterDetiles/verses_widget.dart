import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/ChapterDetiles/chapter_detiles_screen.dart';

class VersesWidget extends StatelessWidget {
String content ;
int index;


VersesWidget(this.content,this.index ,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
    padding: EdgeInsets.all(10),

        child: Text(
          textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style:
            TextStyle(fontSize: 19,color: Colors.black),
            '$content {${index+1}}'));
  }
}
