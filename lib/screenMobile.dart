import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:websitenew/const.dart';
import 'package:websitenew/responsive.dart';
import 'package:websitenew/screen.dart';
import 'package:websitenew/widgets/header.dart';
import 'package:websitenew/widgets/headerBig.dart';
import 'package:url_launcher/url_launcher.dart';

class screenMobile extends StatefulWidget {
  @override
  State<screenMobile> createState() => _ScreenMobileState();
}

class _ScreenMobileState extends State<screenMobile> {
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
              height: 800,
              color: bgColor2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Greetings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 50),
                  ),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 50)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 300,
                            child: Image.asset("me.jpeg"),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                        child: Container(
                          child: Text(
                            "Hello, Welcome to my Portfolio website!\nI'm a Web/Full Stack Developer\nThis website essentially contains everything about me\nFrom hobbies to work experience\nSo feel free to check it out!\nDid any part of what I do sound interesting to you?\nFeel free to contact me under 'Contact'! ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Rubik',
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(
            width: double.infinity,
            height: 800,
            color: bgColor,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Knowledge/Education",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 50),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                "English In A Fluent/Native Level",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
              Text(
                "\nComputer Science In A High School Level:\n",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "- Data Structures\n- Computation Models(Automatons)\n- Web-Development\n- Front-End Development\n- MySQL Data Structures\n- Back-End development alongside java\n- Basic App development In Android Studio",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
                ),
              ),
              Text(
                "\n+ Self-taught Programming Knowledge In the JQuery libraries and The Flutter Framework\n",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
            ]),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 800,
              color: bgColor2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Job Experience",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 50),
                  ),
                  Padding(padding: EdgeInsets.only(top: 60)),
                  Text(
                    "As a hobbyist and as a developer I usually take on different Jobs/Projects\nhere are some of the jobs and titles I've Had so far:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 15),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "\n- Junior Web Developement at Akita.cloud\n- Full Stack Development at IDvision",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  Text(
                    "* More Information Is Available In My LinkedIn\n(You Can Find My LinkedIn Under 'Contact')",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 15),
                  ),
                ],
              )),
          Container(
            width: double.infinity,
            height: 800,
            color: bgColor,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Projects",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 50),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                "Besides Work Related Projects I also Have Projects That I created for Personal Use:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "- Android Studio Final Project:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              IconButton(
                onPressed: () {
                  const url = 'https://github.com/RonBabaj/Pig-Clicker-Farm';
                  launchURL(url);
                },
                icon: Icon(
                  Icons.android_outlined,
                ),
                color: Colors.white70,
                iconSize: 70,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text(
                  "- My School-Related Web Development Final Project:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
                ),
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
                  iconSize: 70,
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
                  iconSize: 70,
                )
              ]),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "*This Website (rongurfinkel.com) Is Also A Personal Web Development Project",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
            ]),
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 800,
              color: bgColor2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "Hobbies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black26,
                        fontFamily: 'Bodoni',
                        fontSize: 50),
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Text(
                    "Music Production:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Rubik',
                        fontSize: 15),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "- Music Editing softwares\n(Audacity, Adobe Audition)\n- Instruments (Guitar, Drums, Bass)\n- Music Recording\n- Live Sessions",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Media Editing And Video Production:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "- Video Editing software \n(Adobe Premiere Pro,After Effects)\n- Image Manipulation Software \n(Adobe Photoshop, Adobe Illustrator)\n- Screen Recordings\n- Live Footage Recordings\n- Various Editing Techniques:\n Montage, frame-by-frame, etc.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rubik',
                          fontSize: 15),
                    ),
                  ),
                ],
              )),
          Container(
            width: double.infinity,
            height: 600,
            color: bgColor,
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 60)),
              Text(
                "Contact Me",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Bodoni', fontSize: 50),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
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
                  iconSize: 50,
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
                  iconSize: 50,
                )
              ]),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "E-mail: info@rongurfinkel.com",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "GitHub: @RonBabaj",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "linkedin: ron-gurfinkel-44966a244",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white70, fontFamily: 'Rubik', fontSize: 15),
              ),
            ]),
          ),
        ]));
  }
}
