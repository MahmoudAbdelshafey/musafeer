import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:musafeer_graduation_project/features/auth/presentation/view/onboarding.dart';


class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _a = true;
      });
    });
    Timer(Duration(milliseconds: 400), () {
      setState(() {
        _b = true;
      });
    });
    Timer(Duration(milliseconds: 1300), () {
      setState(() {
        _c = true;
      });
    });
    Timer(Duration(milliseconds: 1700), () {
      setState(() {
        _e = true;
      });
    });
    Timer(Duration(milliseconds: 3400), () {
      setState(() {
        _d = true;
      });
    });
    Timer(Duration(milliseconds: 3850), () {
      setState(() {
        Navigator.of(context).pushReplacement(
          ThisIsFadeRoute(
            route: onBoarding(),
          ),
        );
      });
    });
  }

  bool _a = false;
  bool _b = false;
  bool _c = false;
  bool _d = false;
  bool _e = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(
            'assets/images/shipment.jpeg',
          ), fit: BoxFit.cover)
        ),
        child: Center(
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: _d ? 900 : 2500),
                curve: _d ? Curves.fastLinearToSlowEaseIn : Curves.elasticOut,
                height: _d
                    ? 0
                    : _a
                    ? _h / 2
                    : 20,
                width: 20,
                // color: Colors.deepPurpleAccent,
              ),
              AnimatedContainer(
                duration: Duration(
                    seconds: _d
                        ? 1
                        : _c
                        ? 2
                        : 0),
                curve: Curves.fastLinearToSlowEaseIn,
                height: _d
                    ? _h
                    : _c
                    ? 80
                    : 20,
                width: _d
                    ? _w
                    : _c
                    ? 200
                    : 20,
                decoration: BoxDecoration(
                    color: _b ? Colors.white : Colors.transparent,
                    // shape: _c? BoxShape.rectangle : BoxShape.circle,
                    borderRadius:
                    _d ? BorderRadius.only() : BorderRadius.circular(30)),
                child: Center(
                  child: _e
                      ? AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [
                      FadeAnimatedText(
                        'Musafeer',
                        duration: Duration(milliseconds: 1700),
                        textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )
                      : SizedBox(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThisIsFadeRoute extends PageRouteBuilder {
  final Widget? page;
  final Widget? route;

  ThisIsFadeRoute({this.page, this.route})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page!,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: route,
        ),
  );
}

