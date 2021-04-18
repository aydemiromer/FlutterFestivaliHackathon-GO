import 'package:flutter/material.dart';
import 'package:go/Screens/cardStart.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

// ------------------ Custom config ------------------
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        /*title: "GO",
        styleTitle: TextStyle(
            color: Color(0xFFFF9800),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),*/
        description:
            //BURAYA ACIKLAMA YAPILACAK
            "Go ile cüzdanınızda duran küsüratlar iyiliğe dönüşsün!",
        styleDescription: TextStyle(
            color: Color(0xFFBD602A),
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        pathImage: "images/logo.jpg",
        
        //ARKA PLAN RENKLERİNİ AYARLAMAK İSTERSEN BEGIN VE END KODLARINI DEGISTIR
        colorBegin: Color(0xFFFFFFFF),
        colorEnd: Color(0xFFDEF4FD),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "Nasıl Çalışıyoruz?",
        styleTitle: TextStyle(
            color: Color(0xFF9CCDFC),
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Go ile bu ay sizlerin seçtiği vakıf, kurum, kuruluşa toplanan bağışlar aktarılır.Göndereceğiniz bağışların niceliğine değil niteliğine önem veriyoruz.Haydi durmayın Go ile yardıma başlayın!",
        styleDescription: TextStyle(
            color: Color(0xFFBD602A),
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        colorBegin: Color(0xFFFFFFFF),
        colorEnd: Color(0xFFDEF4FD),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "ANKET",
        styleTitle: TextStyle(
            color: Color(0xFFFF5E00),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description: "Anketimize katılabilir ve bu ay hangi kuruluşa bağış yapılacağını seçebilirsiniz...",
        styleDescription: TextStyle(
            color: Color(0xFFFF5E00),
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'),
        pathImage: "images/donate.jpg",
        colorBegin: Color(0xFFFFFFFF),
        colorEnd: Color(0xFFFFFFFF),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    //Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CardStart()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xFFFF5E00),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xFFFF5E00),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xFFFF5E00),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0xFFB19060),
      colorActiveDot: Color(0xFFFF5E00),
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      backgroundColorAllSlides: Colors.grey,

      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
