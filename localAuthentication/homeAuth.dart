import 'package:flutter/material.dart';
import 'package:liveretailapp/examples/localAuthentication/localAuthenticationRepository.dart';
import 'package:liveretailapp/examples/localAuthentication/locatorRepository.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final LocalAuthenticationRepository _localAuth =
      exampleLocator<LocalAuthenticationRepository>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
        title: Text('Local Authentication'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('authenticate'),
          onPressed: (){
            print('CLICADO');
          _localAuth.authenticate();
          } ,
        ),
      ),
    );
  }
}