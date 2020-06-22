import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Click Me!'),
      onPressed: () {
        showBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: FlatButton(
                child: Text('Close'),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            );
          },
        );
      },
    );
  }
}
