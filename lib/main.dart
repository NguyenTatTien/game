import 'package:flutter/material.dart';
import 'package:game/Views/LevelView.dart';
import 'package:momentum/momentum.dart';
import 'package:game/Controllers/GameController.dart';
void main() {
  runApp(Momentum(controllers: [GameController()],child: const MyApp(),));
}
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(appBar: AppBar(title:  const Text("Game"),),
      body: LevelView(),
     )
    );
  }
}
