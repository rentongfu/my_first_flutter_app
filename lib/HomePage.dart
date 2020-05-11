import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/ReviewView.dart';
import 'package:myfirstflutterapp/SearchView.dart';

import 'TaskView.dart';
import 'UserView.dart';




class MyHomePage extends StatefulWidget {
    MyHomePage({Key key,}) : super(key: key);
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    List<Widget> pages = <Widget>[SearchPage() , TaskView() , ReviewView() , UserView()];
    var _selectIndex = 0 ;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('首页'),
            ),
            body: Center(
                child:pages[_selectIndex]
            ),// This trailing comma makes auto-formatting nicer for build methods.
            bottomNavigationBar: BottomNavigationBar(
                items:const<BottomNavigationBarItem> [
                    BottomNavigationBarItem(title: Text('单词' ) , icon: Icon(Icons.favorite)),
                    BottomNavigationBarItem(title: Text('待办' ) , icon: Icon(Icons.favorite)),
                    BottomNavigationBarItem(title: Text('复习' ) , icon: Icon(Icons.favorite)),
                    BottomNavigationBarItem(title: Text('用户' ) , icon: Icon(Icons.favorite))
                ] ,
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Colors.grey,
                currentIndex: _selectIndex,
                onTap: (index){
                    setState(() {
                        _selectIndex = index ;
                    });
                },
                type: BottomNavigationBarType.fixed,

            ),
        );
    }
}
