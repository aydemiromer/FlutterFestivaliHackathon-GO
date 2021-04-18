import 'package:flutter/material.dart';
import 'package:go/data.dart';
import 'package:go/Widgets/cardDetail.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'İlgili bankanın ibanını buradan bulabilirsin.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child:
                  /*ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, i) {*/
                  Column(
                children: [
                  cards(context),
                  cards2(context),
                  cards3(context),
                ],
              )),
        )
      ],
    );
  }

  Container cards(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: customShadow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned.fill(
              left: -400,
              top: -100,
              child: Container(
                  decoration: BoxDecoration(
                boxShadow: customShadow,
                shape: BoxShape.circle,
                color: Colors.white38,
              ))),
          Positioned.fill(
              right: -400,
              top: 100,
              bottom: -400,
              child: Container(
                  decoration: BoxDecoration(
                boxShadow: customShadow,
                shape: BoxShape.circle,
                color: Colors.white38,
              ))),
          CardDetails(),
        ],
      ),
    );
  }
}

Container cards2(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: primaryColor,
      boxShadow: customShadow,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        Positioned.fill(
            left: -400,
            top: -100,
            child: Container(
                decoration: BoxDecoration(
              boxShadow: customShadow,
              shape: BoxShape.circle,
              color: Colors.white38,
            ))),
        Positioned.fill(
            right: -400,
            top: 100,
            bottom: -400,
            child: Container(
                decoration: BoxDecoration(
              boxShadow: customShadow,
              shape: BoxShape.circle,
              color: Colors.white38,
            ))),
        Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0, top: 0.0),
                child: Container(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      'images/zblogo.png',
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0, top: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    cardText("€IBAN:TR55 0010 0000 0012 3456 7850 02"),
                    cardText("\$IBAN:TR38 0010 0000 0012 3456 7850 02"),
                    cardText("₺IBAN:TR10 0010 0000 0012 3456 7850 02"),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Container cards3(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: primaryColor,
      boxShadow: customShadow,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        Positioned.fill(
            left: -400,
            top: -100,
            child: Container(
                decoration: BoxDecoration(
              boxShadow: customShadow,
              shape: BoxShape.circle,
              color: Colors.white38,
            ))),
        Positioned.fill(
            right: -400,
            top: 100,
            bottom: -400,
            child: Container(
                decoration: BoxDecoration(
              boxShadow: customShadow,
              shape: BoxShape.circle,
              color: Colors.white38,
            ))),
        Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0, top: 0.0),
                child: Container(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      'images/vakıf.png',
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0, top: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    cardText("€IBAN:TR55 0010 0000 0012 3456 7850 02"),
                    cardText("\$IBAN:TR38 0010 0000 0012 3456 7850 02"),
                    cardText("₺IBAN:TR10 0010 0000 0012 3456 7850 02"),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

Row cardText(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        text,
        //'₺IBAN:TR1000 1000 0000 12345678 5002',
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
      copy(),
    ],
  );
}

Align copy() {
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Center(
          child: Text(
            'Copy',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          ),
        ),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: primaryColor,
          boxShadow: customShadow,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  );
}
