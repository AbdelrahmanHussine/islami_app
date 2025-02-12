import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/home/Hadeth/hadeth_data_class.dart';

class HadethDetailsScreen extends StatelessWidget {
static const String routName='HadethDetailsScreen';
  @override
  Widget build(BuildContext context) {
    var arges= ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/default_bg.png',),fit: BoxFit.fill),

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arges.title),
        ),
        body:

        Column(
          children: [
            Expanded(
              child: Card(elevation: 18,
                margin: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                color: Theme.of(context).cardColor,
                child: SingleChildScrollView(
                  child: Text(textAlign:TextAlign.center ,
                    arges.content,style:
                    TextStyle(
                      fontSize: 20,
              
                    ),),
                ),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
