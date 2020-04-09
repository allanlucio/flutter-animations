import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String _anim = "Spin";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: FlareActor(
            "assets/gears.flr",
            animation: _anim,
            isPaused: false,
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            " Flutter + Flare",
            style: TextStyle(fontSize: 30.0),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 100,
            width: 100,
            child: FlareActor(
              "assets/heart.flr",
              animation: "Pulse",
            ),
          )
        ],
      ),
    );
  }
}
