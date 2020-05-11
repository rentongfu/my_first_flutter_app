import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
    final String title = "子页面";
    @override
    State<StatefulWidget> createState() {
        return MySecondPageState();
    }

}

class MySecondPageState extends State<MySecondPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text(widget.title)),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                        Text("这是第二个页面"),
                        RawMaterialButton(
                            onPressed: () {
                                Navigator.pop(context);
                            },
                        )
                    ],
                ),
            ),

        );
    }

}