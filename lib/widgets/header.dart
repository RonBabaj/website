import 'package:flutter/material.dart';

import '../const.dart';

class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: const Icon(
            Icons.menu_outlined,
            color: Colors.white70,
            size: 32,
          )),
    );
  }
}
