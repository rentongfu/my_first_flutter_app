import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        // TODO: implement createState
        return SearchPageState();
    }
}

class SearchPageState extends State<SearchPage> {
    var cancelButtonVisible = false;

    TextEditingController _searchTextFieldController = TextEditingController();
    TextEditingController _tmpController = TextEditingController();

    FocusNode _searchTextFieldFocusNode;
    FocusNode _tmpFocusNode ;

    void initState(){
        super.initState();
        _searchTextFieldFocusNode = FocusNode();
        _searchTextFieldFocusNode.addListener(() {
            if (_searchTextFieldFocusNode.hasFocus) {
                setState(() {
                    cancelButtonVisible = true;
                });
            } else {
                setState(() {
                    cancelButtonVisible = false;
                });
            }
        });
        _tmpFocusNode = FocusNode();
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(10.0 , 0 , 10.0 ,0),
                    child: Row(
                        children: cancelButtonVisible ? <Widget>[
                            Expanded(
                                child: TextField(
                                    controller: _searchTextFieldController,
                                    focusNode: _searchTextFieldFocusNode,
                                    style: TextStyle(color: Colors.black),
                                    cursorColor: Colors.black,
                                )
                            ),
                            MaterialButton(
                                onPressed: _onCancelButtonClicked,
                                child: Text("取消"),
                                minWidth: 24,
                            )
                        ] : <Widget>[
                            Expanded(
                                child: TextField(
                                    controller: _searchTextFieldController,
                                    focusNode: _searchTextFieldFocusNode,
                                    style: TextStyle(color: Colors.black),
                                    cursorColor: Colors.black,
                                ),
                            )
                        ],
                    ),
                ),


                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context , index){
                            return Padding(
                                padding:  EdgeInsets.fromLTRB(10.0 , 8.0 , 10.0 , 8.0),
                                child: Column(
                                    children: <Widget>[
                                        Text("ListView Item" , style: TextStyle(fontSize: 18 , color: Color.fromARGB(0xFF, 0, 0, 0)  ),  textAlign: TextAlign.right,),
                                        Align(
                                            alignment:Alignment.centerRight ,
                                            child: Text("2020-05-11 22:29" , style: TextStyle(fontSize: 12 , color: Color.fromARGB(0xFF, 0x7F, 0x7F, 0x7F) ), ),),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                ) ,
                            );},
                        separatorBuilder: ( context,  index){
                            return Divider(height: 1.0, color: Color.fromARGB(0xFF, 0, 0, 0 ));
                        },
                        itemCount: 20
                    ),
                ),
            ],
        );
        return new ListView(children: _getListItems());
    }

    List<Widget> _getListItems(){
        List<Widget> widgets = [];
        for(int i = 0 ; i < 20 ; i++){


        }
        return widgets;
    }

    void _onCancelButtonClicked() {
        if(_searchTextFieldFocusNode!=null)
            _searchTextFieldFocusNode.unfocus();
    }
}