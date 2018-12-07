import "package:flutter/material.dart";

class ContentRecommend extends StatefulWidget{

  @override
  ContentRecommendState createState() =>  new ContentRecommendState();

}

class ContentRecommendState extends State<ContentRecommend>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(title: new Text("内容推荐")),
      body: Center(
        child:new Container( // grey box
          child: new Text(
            "内容推荐",
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