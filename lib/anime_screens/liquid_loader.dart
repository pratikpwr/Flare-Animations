import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LiquidLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String animationName = "Untitled";
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: Colors.white,),
            ),
            Container(
              height: 400,
              width: 400,
              child: FlareActor(
                'assets/Liquid Loader.flr',
                alignment: Alignment.center,
                animation: animationName,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Liquid Loader',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
