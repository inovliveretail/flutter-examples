import 'package:equatable/equatable.dart';

abstract class ExampleEvent extends Equatable {
  const ExampleEvent();
}

class TestOne extends ExampleEvent {
  @override
  List<Object> get props => null;

  @override 
  String toString() => "TestOne";
}

class TestTwo extends ExampleEvent {
  @override
  List<Object> get props => null;

  @override 
  String toString() => "TestTwo";
}
