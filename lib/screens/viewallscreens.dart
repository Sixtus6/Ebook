import 'package:flutter/material.dart';

class viewallscreens extends StatefulWidget {
  const viewallscreens({Key? key}) : super(key: key);

  @override
  _viewallscreensState createState() => _viewallscreensState();
}

class _viewallscreensState extends State<viewallscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          // child: PageView(
          //   controller: PageController,
          //   onPageChanged: (index) => callback(index),
          // ),
          ),
    );
  }
}
