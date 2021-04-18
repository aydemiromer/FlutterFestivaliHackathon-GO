import 'package:flutter/material.dart';
import 'package:go/data.dart';
import 'package:go/Widgets/bottomNavigation.dart';

class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigation(),
        backgroundColor: primaryColor,
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.orange,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: primaryColor,
          title: Text('Eski Bağışlar', style: TextStyle(color: Colors.black)),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Listtile(
                'https://www.darulaceze.gov.tr/wp-content/uploads/2020/12/logo.png',
                "Darülaceze",
                "2020/Ekim",
                "Bağışlanan Tutar:7.000₺"),
            Listtile(
                'https://yt3.ggpht.com/ytc/AAUvwnj5m53r7_4D_llQBWQvcfPB_Q_01fnyJvaGc96XPg=s900-c-k-c0x00ffffff-no-rj',
                "İnsani Yardımlaşma Vakfı",
                "2020/Kasım",
                "Bağışlanan Tutar:10.000₺"),
            Listtile(
                'https://www.forummersin.com/media/image/6FDXW23CBT4HD9.jpg',
                "Kızılay",
                "2020/Aralık",
                "Bağışlanan Tutar:20.000₺"),
            Listtile(
                'https://pbs.twimg.com/profile_images/1232387986119065600/GEx4_aZx_400x400.jpg',
                "Ahbap",
                "2021/Ocak",
                "Bağışlanan Tutar:40.000₺"),
            Listtile(
                'https://pbs.twimg.com/profile_images/821793243000164352/a37CYS5V.jpg',
                "Pati Dostu",
                "2021/Şubat",
                "Bağışlanan Tutar:15.000₺"),
            Listtile(
                'https://cdn-tema.mncdn.com/Uploads/Cms/tema-logo-cerceve.jpeg',
                "Tema Vakfı",
                "2021/Mart",
                "Bağışlanan Tutar:50.000₺"),
          ],
        ),
      ),
    );
  }

  ListTile Listtile(String url, String title, String date, String Total) {
    return ListTile(
        title: Row(
      children: [
        SizedBox(
          width: 100,
          child: Image.network(url),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(date),
                Text(
                  Total,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}



/*ListView.builder(
            itemBuilder: (context, index) {
              return Listtile(
                  'https://yt3.ggpht.com/ytc/AAUvwnj5m53r7_4D_llQBWQvcfPB_Q_01fnyJvaGc96XPg=s900-c-k-c0x00ffffff-no-rj',
                  "asdasd",
                  "asdasd",
                  "asasdasd");
            },
          )),*/