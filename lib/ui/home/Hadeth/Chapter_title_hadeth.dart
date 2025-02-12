import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_islam_app/ui/HadethDetailes/Hadeth_details_screen.dart';
import 'package:test_islam_app/ui/home/Hadeth/hadeth_data_class.dart';
class ChapterTitleHadeth extends StatelessWidget {
  Hadeth hadeth;
   ChapterTitleHadeth(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HadethDetailsScreen.routName,
        arguments: hadeth
        );
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Text(hadeth.title,style: TextStyle(fontSize: 24,color: Colors.white),),
        
      ),
    );
  }
}
