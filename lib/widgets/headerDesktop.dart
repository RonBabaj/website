import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:websitenew/screen.dart';
import '../const.dart';

class headerDesktop extends StatefulWidget {
  @override
  State<headerDesktop> createState() => _headerDesktopState();
}

class _headerDesktopState extends State<headerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: secondaryColor,
        child: Column(children: [
          Container(
            child: Row(children: [
              Padding(padding: EdgeInsets.only(left: 30)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(0,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "pig.png",
                        width: 40,
                        height: 40,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Ron Gurfinkel - Official",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 100)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(800,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.lightbulb,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Knowledge",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 60)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(1600,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.work_history,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 60)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(2400,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.construction,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Projects",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 60)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(3200,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.sports_basketball,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Hobbies",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 60)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(4500,
                          duration: Duration(microseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.contact_mail,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      const Text(
                        "Contact",
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(bottom: 60)),
              Padding(padding: EdgeInsets.only(left: 60)),
            ]),
          ),
        ]),
      ),
      Divider(
        height: 4,
      )
    ]);
  }
}
