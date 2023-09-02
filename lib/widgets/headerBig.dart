import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:websitenew/screen.dart';
import '../const.dart';

class headerBig extends StatefulWidget {
  @override
  State<headerBig> createState() => _headerBigState();
}

class _headerBigState extends State<headerBig> {
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 120)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(970,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 80)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(1950,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 80)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(3000,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 80)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(4000,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 80)),
              InkWell(
                  onTap: () {
                    setState(() {
                      screen.scrollController.animateTo(5000,
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
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.only(bottom: 80)),
              Padding(padding: EdgeInsets.only(left: 80)),
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
