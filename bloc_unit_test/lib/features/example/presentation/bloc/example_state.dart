import 'package:equatable/equatable.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();
}

class InitialExampleState extends ExampleState {
  @override
  List<Object> get props => [];

  @override
  String toString() => "InitialExampleState";
}

class LoadingExampleState extends ExampleState {
  @override
  List<Object> get props => null;

  @override
  String toString() => "LoadingExampleState";
}

class TestOneReturn extends ExampleState {
  @override
  List<Object> get props => [];

  @override
  String toString() => "TestOneReturn";
}

class TestTwoReturn extends ExampleState {
  @override
  List<Object> get props => [];

  @override
  String toString() => "TestTwoReturn";
}