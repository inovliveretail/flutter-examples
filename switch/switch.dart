import 'package:flutter/material.dart';

class SwitchExampleState extends State {
  bool switchOn = false;

  void _onSwitchChanged(bool value) {
    setState(() {
      switchOn = value;  
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: Center(
        child: Transform.scale(
          scale: 2.0,
          child: Switch(
            onChanged: _onSwitchChanged,

            value: switchOn,

            activeColor: Colors.blue,

            activeTrackColor: Colors.green,

            inactiveThumbColor: Colors.white,

            inactiveTrackColor: Colors.blue,

            // activeThumbImage: Image.asset(

            //   'assets/images/flutter.png'

            // ).image,
          ),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  @override
  SwitchExampleState createState() => new SwitchExampleState();
}
