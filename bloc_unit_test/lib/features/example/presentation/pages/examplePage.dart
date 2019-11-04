import 'package:bloc_unit_test/features/example/presentation/bloc/bloc.dart';
import 'package:bloc_unit_test/features/example/presentation/pages/exampleModule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({Key key}) : super(key: key);


  @override
  State createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {

  ExampleBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = ExampleBloc();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Unit Testing With Bloc"),
          ),
          body: _getBody(),
        ),
      ),
    );
  }

  Widget _getBody() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          RaisedButton(
            onPressed: () { _bloc.add(TestOne()); },
            child: Text("Dispatch TestOne")
          ),
          RaisedButton(
            onPressed: () { _bloc.add(TestTwo()); },
            child: Text("Dispatch TestTwo")
          ),
          BlocProvider<ExampleBloc>(
            builder: (context) => _bloc,
            child: ExampleModule(),
          )  
        ],
      ),
    );
  }
}