import 'package:flutter/material.dart';

class Responsive extends StatelessWidget{
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

  // this size work fine for my design, maybe you need some customization depends on your design.

  static bool isMobile(context) =>
    MediaQuery.of(context).size.width < 650;
  
  static bool isTablet(context) =>
    MediaQuery.of(context).size.width <900 &&
    MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(context) =>
    MediaQuery.of(context).size.width >=900;

  Widget build(context){
    return LayoutBuilder(
      // If our width is more than 900 then we consider it a desktop
      builder: (context, constraints){
        if(constraints.maxWidth >=900){
          return desktop;
        }
        //If our width is less than 900 and more 650 we consider it as tablet
        else if (constraints.maxWidth >=650){
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      }
    );
  }
}