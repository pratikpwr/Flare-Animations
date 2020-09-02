import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class LoadingSuccessError extends StatefulWidget {
  @override
  _LoadingSuccessErrorState createState() => _LoadingSuccessErrorState();
}

class _LoadingSuccessErrorState extends State<LoadingSuccessError> {
  String animationName = 'loading';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
            Container(
              height: 250,
              width: 250,
              child: FlareActor(
                'assets/loading_success_error.flr',
                alignment: Alignment.center,
                animation: animationName,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Loading-Success-Error',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {
                    var _name = 'failure';
                    setState(() {
                      animationName = _name;
                    });
                  },
                  child: Text(
                    'Error',
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    var _name = 'loading';
                    setState(() {
                      animationName = _name;
                    });
                  },
                  child: Text(
                    'Loading',
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    var _name = 'success';
                    setState(() {
                      animationName = _name;
                    });
                  },
                  child: Text(
                    'Success',
                    style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
