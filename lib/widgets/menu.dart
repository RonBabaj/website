import 'package:flutter/material.dart';
import 'package:websitenew/const.dart';
import 'package:websitenew/screen.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _MenuState();
}

class _MenuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: secondaryColor,
        child: ListView(children: [
          InkWell(
              onTap: () {
                screen.scrollController.animateTo(0,
                    duration: Duration(microseconds: 1000),
                    curve: Curves.fastOutSlowIn);
              },
              child: DrawerHeader(
                child: Image.asset(
                  "pig.png",
                ),
              )),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: const Text(
              "Knowledge",
              style: TextStyle(fontFamily: 'Rubik'),
            ),
            leading: const Icon(
              Icons.lightbulb,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onTap: (() {
              screen.scrollController.animateTo(1800,
                  duration: Duration(microseconds: 1000),
                  curve: Curves.fastOutSlowIn);
            }),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: const Text(
              "Experience",
              style: TextStyle(fontFamily: 'Rubik'),
            ),
            leading: const Icon(
              Icons.work_history,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onTap: (() {
              screen.scrollController.animateTo(2650,
                  duration: Duration(microseconds: 1000),
                  curve: Curves.fastOutSlowIn);
            }),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title:
                const Text("Projects", style: TextStyle(fontFamily: 'Rubik')),
            leading: const Icon(
              Icons.construction,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onTap: (() {
              screen.scrollController.animateTo(3400,
                  duration: Duration(microseconds: 1000),
                  curve: Curves.fastOutSlowIn);
            }),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: const Text("Hobbies", style: TextStyle(fontFamily: 'Rubik')),
            leading: const Icon(
              Icons.sports_basketball,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onTap: (() {
              screen.scrollController.animateTo(4200,
                  duration: Duration(microseconds: 1000),
                  curve: Curves.fastOutSlowIn);
            }),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListTile(
            title: const Text("Contact", style: TextStyle(fontFamily: 'Rubik')),
            leading: const Icon(
              Icons.contact_mail,
              color: Colors.white,
            ),
            textColor: Colors.white,
            onTap: (() {
              screen.scrollController.animateTo(4800,
                  duration: Duration(microseconds: 1000),
                  curve: Curves.fastOutSlowIn);
            }),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
        ]));
  }
}
