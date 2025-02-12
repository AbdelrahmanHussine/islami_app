import 'package:flutter/material.dart';

class ShowThembottomsheet extends StatefulWidget {
   ShowThembottomsheet({super.key});

  @override
  State<ShowThembottomsheet> createState() => _ShowThembottomsheetState();
}

class _ShowThembottomsheetState extends State<ShowThembottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Light',style: TextStyle(
          //       fontSize: 22,
          //       color: Theme.of(context).primaryColor,
          //     ),),
          //     Icon(Icons.check),
          //   ],
          // ),
          getSelctedItem('Light'),
          SizedBox(height: 3,),
          // Text('Dark',style: TextStyle(
          //   fontSize: 22,
          // ),),
          UnSelctedItem("Dark")
        ],
      ),
    );
  }

  Widget getSelctedItem(String text){
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: TextStyle(
          fontSize: 22,
          color: Theme.of(context).primaryColor,
        ),),
        Icon(Icons.check),
      ],
    );
  }

   Widget UnSelctedItem(String text){
    return Text(text,style: TextStyle(
      fontSize: 22,
    ),);
   }
}
