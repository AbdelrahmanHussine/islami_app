import 'package:flutter/material.dart';

class ShowlanguageBottomSheet extends StatefulWidget {
  const ShowlanguageBottomSheet({super.key});

  @override
  State<ShowlanguageBottomSheet> createState() => _ShowlanguageBottomSheetState();
}

class _ShowlanguageBottomSheetState extends State<ShowlanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(12),
      width: double.infinity,

      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Arabic',style: TextStyle(
          //       fontSize: 22,
          //       color: Theme.of(context).primaryColor
          //     ),),
          //     Icon(Icons.check),
          //   ],
          // ),
          getSelcted('English'),
          SizedBox(height: 3,),
          // Text('English',style: TextStyle(
          //   fontSize: 22,
          // ),)
          Unslected('العربية')
        ],
      ),
    );
  }

  Widget getSelcted(String text){
return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(text,style: TextStyle(
        fontSize: 22,
        color: Theme.of(context).primaryColor
    ),),
    Icon(Icons.check),
  ],
);
  }

  Widget Unslected(String text){
return   Text(text,style: TextStyle(
  fontSize: 22,
),);
  }
}
