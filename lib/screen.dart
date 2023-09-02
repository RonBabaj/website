import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:websitenew/const.dart';
import 'package:websitenew/responsive.dart';
import 'package:websitenew/widgets/header.dart';
import 'package:websitenew/widgets/headerBig.dart';
import 'package:url_launcher/url_launcher.dart';

class screen extends StatefulWidget {
  static ScrollController scrollController = ScrollController();
  @override
  State<screen> createState() => _ScreenState();
}

class _ScreenState extends State<screen> {
  ConfettiController confitroller = ConfettiController();
  launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    confitroller.play();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: screen.scrollController,
        child: Column(children: [
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 1000,
              color: bgColor2,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 180)),
                  Text(
                    "Greetings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 160),
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 50)),
                      Padding(padding: EdgeInsets.only(bottom: 100)),
                      Column(
                        children: [
                          Container(
                            width: 500,
                            height: 500,
                            child: Image.asset("me.jpeg"),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 100)),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Hello, Welcome to my Portfolio website!\nI'm a Web/Full Stack Developer\nThis website essentially contains everything about me\nFrom hobbies to work experience\nSo feel free to check it out!\nDid any part of what I do sound interesting to you?\nFeel free to contact me under 'Contact'! ",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'Rubik',
                                  fontSize: 40),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )),
          Container(
            width: double.infinity,
            height: 1000,
            color: bgColor,
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "Knowledge/Education",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 100),
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "English In A Fluent/Native Level",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Text(
                "\nComputer Science In A High School Level:\n",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Text(
                "- Data Structures\n- Computation Models(Automatons)\n- Web-Development\n- Front-End Development\n- MySQL Data Structures\n- Back-End development alongside java\n- Basic App development In Android Studio",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Text(
                "\n+ Self-taught Programming Knowledge In the JQuery libraries and The Flutter Framework\n",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
            ]),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 1000,
              color: bgColor2,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 150)),
                  Text(
                    "Job Experience",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 100),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "As a hobbyist and as a developer I usually take on different Jobs/Projects\nhere are some of the jobs and titles I've Had so far:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "\n- Junior Web Developement at Akita (An Edge Defense Company)\n- Full Stack Development at IDvision",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "* More Detailed Information Is Available In My LinkedIn\n(You Can Find My LinkedIn Under 'Contact')",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                ],
              )),
          Container(
            width: double.infinity,
            height: 1000,
            color: bgColor,
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "Projects",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 100),
              ),
              Padding(padding: EdgeInsets.only(top: 100)),
              Text(
                "Besides Work Related Projects I also Have Projects That I created for Personal Use:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(100, 100, 170, 0),
                child: Text(
                  "- Android Studio Final Project:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              IconButton(
                onPressed: () {
                  const url = 'https://github.com/RonBabaj/Pig-Clicker-Farm';
                  launchURL(url);
                },
                icon: Icon(Icons.android_outlined),
                color: Colors.white70,
                iconSize: 100,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "- My School-Related Web Development Final Project:",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {
                    const url =
                        'https://drive.google.com/file/d/1mkrMeLc9xktfO9v9vrYGDE8AHs_WXuBi/view?usp=sharing';
                    launchURL(url);
                  },
                  icon: Icon(Icons.picture_as_pdf_rounded),
                  color: Colors.white70,
                  iconSize: 100,
                ),
                IconButton(
                  onPressed: () {
                    const url =
                        'https://github.com/RonBabaj/Climate-Crisis-website-project';
                    launchURL(url);
                  },
                  icon: Icon(
                    Icons.folder_copy_rounded,
                  ),
                  color: Colors.white70,
                  iconSize: 100,
                )
              ]),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "*This Website (rongurfinkel.com) Is also a Personal Web Development Project",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
            ]),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 1000,
              color: bgColor2,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 100)),
                  Text(
                    "Hobbies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 100),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "Music Production:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "- Music Editing softwares(Audacity, Adobe Audition)\n- Instruments(Guitar, Drums, Bass)\n- Music Recording\n- Live Sessions",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "Media Editing And Video Production:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 40),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(282, 60, 0, 0),
                    child: Text(
                      "- Video Editing software(Adobe Premiere Pro,After Effects)\n- Image Manipulation Software(Adobe Photoshop, Adobe Illustrator)\n- Screen Recordings And Live Footage Recordings\n- Various Editing Techniques- Montage, frame-by-frame, etc.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rubik',
                          fontSize: 40),
                    ),
                  ),
                ],
              )),
          Container(
            width: double.infinity,
            height: 1000,
            color: bgColor,
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 150)),
              Text(
                "Contact Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 100),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {
                    const url = 'https://github.com/RonBabaj';
                    launchURL(url);
                  },
                  icon: Image.asset(
                    "git3.png",
                    color: Colors.white70,
                  ),
                  color: Colors.white70,
                  iconSize: 100,
                ),
                IconButton(
                  onPressed: () {
                    const url =
                        'https://www.linkedin.com/in/ron-gurfinkel-44966a244/';
                    launchURL(url);
                  },
                  icon: Image.asset(
                    "linked.png",
                    color: Colors.white70,
                  ),
                  color: Colors.white70,
                  iconSize: 100,
                )
              ]),
              Padding(padding: EdgeInsets.only(top: 20)),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "E-mail: info@rongurfinkel.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "GitHub: @RonBabaj",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "linkedin: ron-gurfinkel-44966a244",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 40),
              ),
            ]),
          ),
        ]));
  }
}
