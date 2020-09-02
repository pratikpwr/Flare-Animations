import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FloatingAnimation extends StatefulWidget {
  @override
  _FloatingAnimationState createState() => _FloatingAnimationState();
}

class _FloatingAnimationState extends State<FloatingAnimation> {
  String animationName = 'deactivate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Text(
                'More Option Floating Button',
                style: TextStyle(color: Colors.white, fontSize: 20),
            ),
              SizedBox(
                height: 200,
              )
          ],
        )),
      ),
      floatingActionButton: Container(
          height: 200,
          width: 200,
          child: GestureDetector(
            onTap: () {
              var name =
                  (animationName == 'activate') ? 'deactivate' : 'activate';
              setState(() {
                animationName = name;
              });
            },
            child: FlareActor(
              'assets/MultiOptionButton.flr',
              animation: animationName,
              fit: BoxFit.contain,
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
