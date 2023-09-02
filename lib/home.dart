import 'package:flutter/material.dart';
import 'package:websitenew/const.dart';
import 'package:websitenew/responsive.dart';
import 'package:websitenew/screen.dart';
import 'package:websitenew/screenDesktop.dart';
import 'package:websitenew/screenMobile.dart';
import 'package:websitenew/widgets/header.dart';
import 'package:websitenew/widgets/headerBig.dart';
import 'package:websitenew/widgets/headerDesktop.dart';
import 'package:websitenew/widgets/menu.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: bgColor,
        drawer: Container(width: 200, child: menu()),
        body: SafeArea(
          child: Stack(children: [
            if (Responsive.isBig(context)) screen(),
            if (Responsive.isDesktop(context)) screenDesktop(),
            if (!Responsive.isBig(context) && !Responsive.isDesktop(context))
              screenMobile(),
            if (!Responsive.isBig(context) && !Responsive.isDesktop(context))
              header(),
            if (Responsive.isBig(context)) headerBig(),
            // We want this side menu only for the large screen
            if (Responsive.isDesktop(context)) headerDesktop(),
          ]),
        ));
  }
}
