import 'package:flutter/material.dart';
import 'package:test_islam_app/ui/home/Quran/chapter_title_widget.dart';

class QuranTab extends StatelessWidget {
  List<String>suraNames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
return
  Column(
    children: [
      Expanded(flex: 1,
          child: Image(image: AssetImage('assets/images/qur2an_screen_logo.png'))),
      Expanded(flex: 3,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ChapterTitleWidget(

                  suraNames[index],index);
            },
            separatorBuilder: (context, index) {
              return Container(
                color: Theme.of(context).primaryColor,
                width: double.infinity,
                height: 2,
                margin: EdgeInsets.symmetric(horizontal: 60),
              );
            },
            itemCount: suraNames.length),
      )
    ],
  );
  }
  }

