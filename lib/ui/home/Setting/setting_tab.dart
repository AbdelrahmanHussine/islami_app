import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/home/Setting/ShowlanguageBottomSheet.dart';
import 'package:test_islam_app/ui/home/Setting/ShowThemBottomSheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Them',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 5,),
        InkWell(
          onTap: () {
            showThem();
          },
          child: Container(width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 1,

            )
          ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text('Light',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              )),
        ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Language',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 5,),
        InkWell(
          onTap: () {
            showLanguage();
          },
          child: Container(width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1,

                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Text('English',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),),
              )),
        ),
      ],
    );
  }

  void showThem() {
    showModalBottomSheet(context: context,
        builder: (context) {
          return ShowThembottomsheet();
        },);
  }


void showLanguage() {
  showModalBottomSheet(context: context,
      builder: (context) {
        return ShowlanguageBottomSheet();
      },);
}
}