import "package:flutter/material.dart";

class UserCenter extends StatefulWidget{

  @override
  UserCenterState createState() =>  new UserCenterState();

}

class UserCenterState extends State<UserCenter>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("我的")),
      body:  Center(
        child:new Container( // grey box
          child: new Text(
            "我的",
            style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              fontFamily: "Georgia",
              color: Colors.white
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(51, 55, 93, 1.0),
        ),
      ),
    );
  }
}