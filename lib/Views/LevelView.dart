import 'package:flutter/material.dart';
class LevelView extends StatefulWidget {
  const LevelView({Key? key}) : super(key: key);

  @override
  _LevelViewState createState() => _LevelViewState();
}

class _LevelViewState extends State<LevelView> {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand()),flex: 2,),
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand(),child: Center(child: Text("Play Game",),),)),
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand(),child:Container(child:  ElevatedButton(child: Text("Dễ"),onPressed: null,),padding: EdgeInsets.all(20),))),
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand(),child: Container(child: ElevatedButton(child: Text("Trung bình"),onPressed: null,),padding: EdgeInsets.all(20)))),
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand(),child: Container(child: ElevatedButton(child: Text("Khó"),onPressed: null,),padding: EdgeInsets.all(20)))),
      Expanded(child:ConstrainedBox(constraints: BoxConstraints.expand()),flex:2),
    ],));
  }
}
