import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './houseName.dart';
import '../roomManagement/roomList.dart';

class HouseManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff3B426B),
      appBar: AppBar(
        title: Text("家庭管理", style: TextStyle(fontSize: ScreenUtil().setSp(36, false))),
      ),
      body: HouseRoomInfo(),
    );
  }
}

class HouseRoomInfo extends StatefulWidget {
  @override
  HouseRoomInfoState createState() => new HouseRoomInfoState();
}

class HouseRoomInfoState extends State<HouseRoomInfo> {
  final _fontStyle = TextStyle(
    fontSize: ScreenUtil().setSp(28,false),
    fontWeight: FontWeight.normal,
    color: Colors.white
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 52.0,
            padding: EdgeInsets.only(left: 15.0, right: 7.5),
            margin: EdgeInsets.only(bottom: 1.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff5C628D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(4.0, 4.0),
                    topRight: Radius.elliptical(4.0, 4.0))),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("家庭名称", style: _fontStyle),
                GestureDetector(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("我的家", style: _fontStyle),
                      Icon(Icons.keyboard_arrow_right, color: Colors.white)
                    ],
                  ),
                  onTap: () => _houseName("123","我的家"),
                )
              ],
            ),
          ),
          Container(
            height: 52.0,
            padding: EdgeInsets.only(left: 15.0, right: 7.5),
            margin: EdgeInsets.only(bottom: 1.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff5C628D),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(4.0, 4.0),
                    bottomRight: Radius.elliptical(4.0, 4.0))),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("房间管理", style: _fontStyle),
                GestureDetector(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("有2个房间", style: _fontStyle),
                      Icon(Icons.keyboard_arrow_right, color: Colors.white)
                    ],
                  ),
                  onTap: () => _goRoomList("123"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _houseName(String id, String name){
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (context){
        return new HouseName(id, name);
      }
    ));
  }

  void _goRoomList(String houseId){
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (context){
        return new RoomList(houseId);
      }
    ));
  }
}
