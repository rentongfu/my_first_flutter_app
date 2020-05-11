import 'package:flutter/cupertino.dart';

class ReviewView extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return _ReviewViewState();
    }
}

class _ReviewViewState extends State<ReviewView> {
    @override
    Widget build(BuildContext context) {
        return  new ListView(
            children: _getListItems(),
        );
    }

    List<Widget> _getListItems(){
        List<Widget> widgets = [];
        for(int i = 0 ; i < 10 ; i++){
            widgets.add(Text("ListView Item"));
        }
        return widgets;
    }

}