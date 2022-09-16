import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class createdoc extends StatefulWidget {
  const createdoc({Key? key}) : super(key: key);

  @override
  _createdocState createState() => _createdocState();
}

QuillController _controller = QuillController.basic();

class _createdocState extends State<createdoc> {
  savefunction() {
    print('this is from save function');
    var myjson = jsonEncode(_controller.document.toDelta().toJson());
    print(myjson.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: GestureDetector(
            onTap: () {
              savefunction();
              // print('object');
              // print(_controller.document.toDelta().toString());
              // print(_controller.document.toPlainText().toString());
            },
            child: const Icon(Icons.save),
          ),
        ),
        // appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: QuillToolbar.basic(
                controller: _controller,
                //showSmallButton: true,
              ),
            ),
            GestureDetector(
                onTap: () {
                  print('object');
//print(_controller.document.toDelta().toString());
                },
                child: const Icon(Icons.save)),
            Expanded(
              child: Container(
                child:
                    QuillEditor.basic(controller: _controller, readOnly: false),
              ),
            )
          ],
        ),
      ),
    );
  }
}
