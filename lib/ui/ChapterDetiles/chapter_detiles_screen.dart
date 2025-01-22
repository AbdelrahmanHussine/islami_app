import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_islam_app/ui/ChapterDetiles/verses_widget.dart';

class ChapterDetilesScreen extends StatefulWidget {
  static const String routName='ChpterDetiles';


  ChapterDetilesScreen({super.key});

  @override
  State<ChapterDetilesScreen> createState() => _ChapterDetilesScreenState();
}

class _ChapterDetilesScreenState extends State<ChapterDetilesScreen> {
  @override
  Widget build(BuildContext context) {
    ChpterDetailesArgo argo=ModalRoute.of(context)?.settings.arguments as ChpterDetailesArgo;
    if (verses.isEmpty){    loadFile(argo.index);
    }
    return  Container(
      decoration: BoxDecoration(

        image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage('assets/images/default_bg.png'))
      ),
        child: Scaffold(
          appBar: AppBar(
title: Text(argo.title),
          ),
          body: verses.isEmpty ?
          Center(child: CircularProgressIndicator()):
          Card(elevation: 18,
            margin: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          ),
            color: Theme.of(context).cardColor,
            child: ListView.builder(itemBuilder: (context, index) {
              return VersesWidget(verses[index],index);
            },
              itemCount: verses.length,
            ),
          ),
        ));
  }

  List<String>verses=[];

  void loadFile(int index)async{
 String fileConten= await  rootBundle.loadString('assets/files/${index+1}.txt');
 verses= fileConten.split('\n');
 setState(() {

 });
  }
}
class ChpterDetailesArgo{
  String title;
  int index;

  ChpterDetailesArgo(this.title, this.index);
}