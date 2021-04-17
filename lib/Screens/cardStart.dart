import 'package:flutter/material.dart';
import 'package:go/Widgets/bottomNavigation.dart';
import 'package:go/data.dart';
import 'package:go/Widgets/cardSection.dart';
import 'package:go/Widgets/headers.dart';

class CardStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
      home: Scaffold(
          bottomNavigationBar: BottomNavigation(),
          backgroundColor: primaryColor,
          body: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              Container(
                height: 120,
                child: WalletHeader(),
              ),
              Container(
                height: 450,
                width: 400,
                child: CardSection(),
              ),
            ],
          )),
    );
  }
}
