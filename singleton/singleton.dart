import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Singleton extends StatefulWidget {
  @override
  _SingletonState createState() => _SingletonState();
}

class _SingletonState extends State<Singleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: Column(
      children: <Widget>[FlatButton(
        child: Text("botao 1"),
        onPressed: (){
          new SingletonClass().nome = "TERESA";
        },
      ),     
      FlatButton(
        child: Text('botao 2'),
        onPressed: (){
          new SingletonClass().nome="VICENTE";
        },
      ), 
      FlatButton(
        child: Text('botao 3'),
        onPressed: (){
          new SingletonClass().nome="NATALIA";
        },
      ),
      FlatButton(
        child: Text('botao 4'),
        onPressed: (){
          new SingletonClass().nome="ALEXANDRE";
        },
      )
      ]
      )   
    );
  }
}

class SingletonClass {
  String nome;

  static SingletonClass _instance;
  factory SingletonClass() {
    _instance ??= SingletonClass._internalConstructor();
    print(_instance.nome);
    
    return _instance;
  }
  SingletonClass._internalConstructor();
}
