import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  @override
  ExampleState get initialState => InitialExampleState();

  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    switch(event.runtimeType) {
      case TestOne:
        yield LoadingExampleState();
        await Future.delayed(Duration(milliseconds: 1000));
        yield TestOneReturn();
        break;
      case TestTwo:
        yield LoadingExampleState();
        await Future.delayed(Duration(milliseconds: 1000));
        yield TestTwoReturn();
        break;
    }
  }
}
