import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_islam_app/ui/home/Hadeth/Chapter_title_hadeth.dart';
import 'package:test_islam_app/ui/home/Hadeth/hadeth_data_class.dart';

class HadethTab extends StatefulWidget {
    HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(AllAhadeath.isEmpty)
      loudHadeathFile();
    return Column(
      children: [
        Expanded(flex: 1,
            child: Image(image: AssetImage('assets/images/hadeth_logo.png'))),
        Container(width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
          border: Border.symmetric( horizontal: BorderSide(width: 2,color: Theme.of(context).dividerColor)),


        ),
            child: Text('Hadeth',style: TextStyle(color: Colors.white,
              fontSize: 24

            ),)),
Expanded(flex: 3,
  child: AllAhadeath.isEmpty ?Center(child: CircularProgressIndicator())
  :
  ListView.separated(
      itemBuilder: (context, index) {
        return ChapterTitleHadeth(AllAhadeath[index]);
      },
      separatorBuilder: (context, index) {
        return Container(
          color: Theme.of(context).dividerColor,
          width: double.infinity,
          height: 2,
          margin: EdgeInsets.symmetric(horizontal: 60),

        );
      },
      itemCount: AllAhadeath.length),
)
      ],
    );

  }

  List<Hadeth> AllAhadeath = [];

  void loudHadeathFile()async{
String fileContent =await rootBundle.loadString('assets/files/ahadeth.txt');
List<String> hadthList= fileContent.trim().split('#');
for(int i = 0;i<hadthList.length;i++){
  String singleHadeth= hadthList[i];
  List<String> hadeathLine= singleHadeth.trim().split('\n');
  String title= hadeathLine[0];
  hadeathLine.remove(0);
  String content = hadeathLine.join('\n');
  Hadeth hadeth = Hadeth(title, content);
  AllAhadeath.add(hadeth);

}

setState(() {

});
  }
}
