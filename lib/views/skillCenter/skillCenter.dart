import 'package:flutter/material.dart';

class SkillCenter extends StatefulWidget{
  @override
  SkillCenterState createState() => new SkillCenterState();
}

class SkillCenterState extends State<SkillCenter>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: new Text("技能中心")
      ),
      body: Center(
        child:new Container( // grey box
          child: new Text(
            "技能中心",
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
      )
    );
  }
}