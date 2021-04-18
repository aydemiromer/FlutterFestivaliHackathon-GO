import 'package:flutter/material.dart';
import 'package:go/data.dart';
import 'package:clipboard/clipboard.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70.0, top: 0.0),
            child: Container(
                height: 50,
                width: 100,
                child: Image.asset(
                  'images/is.png',
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
        copy(text),
      ],
    );
  }

  Align copy(String text) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.content_copy,
              ),
              onPressed: () {
                FlutterClipboard.copy(text).then((value) => print('copied'));
              },
            ),
          ),
          width: 30,
          height: 30,
          /*decoration: BoxDecoration(
            color: primaryColor,
            boxShadow: customShadow,
            borderRadius: BorderRadius.circular(20),
          ),*/
        ),
      ),
    );
  }
}
