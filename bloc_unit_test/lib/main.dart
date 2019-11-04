import 'package:bloc/bloc.dart';
import 'package:bloc_unit_test/BlocDelegate.dart';
import 'package:bloc_unit_test/features/example/presentation/pages/examplePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    BlocSupervisor.delegate = MyBlocDelegate();

    return MaterialApp(
      title: 'Bloc Unit Testing Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamplePage(),
    );
  }
}
