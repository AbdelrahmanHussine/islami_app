import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/home/Tasbeh/TasbehDataClass.dart';

class TasbehTab extends StatefulWidget {
  static const String routName ='TasbehTab';

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  // late Tasbe tasbe ;
int index = 0 ;
int conuter = 0;
double angle=0;
List<String> tasbehChange = [
 " سبحان الله"
 , "الله اكبر"
  ,"استغفر الله"
];
onTap(){
 angle+=3;
conuter++;
if(conuter%33==0){
  index++;
}
if(index== tasbehChange.length){
  index=0;
}
setState(() {

});
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Stack(alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head_sebha_logo.png'),
              InkWell(
                onTap: onTap,
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.090),
                  child: Transform.rotate(

                      angle: angle,
                      child: Image.asset('assets/images/body_sebha_logo.png')),
                ),
              ),

            ],
          ),
          Text(
            'Taspeh Number ',style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
color: Theme.of(context).primaryColor,

            ),

            child: Text(conuter.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
          ),
          SizedBox(),
          Container(padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor,
          ),
            child: Text(tasbehChange[index],style: TextStyle(color: Colors.white,
              fontSize: 30,fontWeight: FontWeight.w200
            ),),
          ),
        ],
      ),
    );
    // return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Padding(
    //       padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.080),
    //       child: Stack(alignment: Alignment.topCenter,
    //         children: [
    //           Image.asset('assets/images/head_sebha_logo.png'),
    //           Image.asset('assets/images/body_sebha_dark.png'),
    //
    //
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
