import 'package:bloc_unit_test/features/example/presentation/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleModule extends StatefulWidget {
  ExampleModule({Key key}) : super(key: key);

  @override
  State createState() => _ExampleModuleState();
}

class _ExampleModuleState extends State<ExampleModule> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExampleBloc, ExampleState>(
      builder: (context, state) {
        return Text(state.toString(), style: TextStyle(fontSize: 20));
      },
    );
  }
}