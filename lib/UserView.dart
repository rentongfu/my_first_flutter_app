import 'package:flutter/material.dart';
import 'package:myfirstflutterplugin/myfirstflutterplugin.dart';

class UserView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserViewState();
  }
}

class _UserViewState extends State<UserView>{
  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Center(
        child: new Material(
          // 设置背景颜色 默认矩形
          color: Colors.purple,
          child: new InkWell(
            //点击事件回调
            onTap: () async{
              var result = await Myfirstflutterplugin.platformVersion;
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext buildContext){
                    return AlertDialog(
                      title: Text("提示"),
                      content: Text( "获取到的版本为：" + result),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("OK"),
                          onPressed: (){
                            Navigator.pop(buildContext , "OK");
                          },
                        ),
                      ],
                    );
                  }
              );
            },
            //不要在这里设置背景色，for则会遮挡水波纹效果,如果设置的话尽量设置Material下面的color来实现背景色
            child: new Container(
              width: 300.0,
              height: 50.0,
              //设置child 居中
              alignment: Alignment(0, 0),
              child: Text("登录",style: TextStyle(color: Colors.white,fontSize: 16.0),),
            ),
          ),
        ),
      );
  }

}