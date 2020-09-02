import 'package:flare_animations/anime_screens/floating_button.dart';
import 'package:flare_animations/anime_screens/liquid_loader.dart';
import 'package:flare_animations/anime_screens/loading_success_error.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flare Animations',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue,
         scaffoldBackgroundColor: const Color(0xff1f1f1f),),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String animationName = 'Untitled';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flare Animations'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimeButton(
                title: 'Liquid Loader',
                widget: LiquidLoader(),
              ),
              AnimeButton(
                title: 'Loading-Success-Error',
                widget: LoadingSuccessError(),
              ),
              AnimeButton(
                title: 'More Option Floating Button',
                widget: FloatingAnimation(),
              ),
            ],
          ),
        ));
  }
}

class AnimeButton extends StatelessWidget {
  final String title;
  final Widget widget;

  const AnimeButton({
    this.title,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.blueAccent),
        ));
  }
}
