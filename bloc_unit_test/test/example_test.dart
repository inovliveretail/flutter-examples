import 'package:bloc_unit_test/features/example/presentation/bloc/bloc.dart';
import 'package:bloc_unit_test/features/example/presentation/bloc/example_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ExampleBloc bloc;

  setUp(() {
    bloc = ExampleBloc();
  });

  tearDown(() {
    bloc?.close();
  });

   test('estado inicial está correto', () {
    expect(bloc.initialState, InitialExampleState());
  });

  test('se fechado não emite mais estados', () {
    expectLater(
      bloc,
      emitsInOrder([InitialExampleState(), emitsDone]),
    );
    bloc.close();
  });

  group('TestOne', () {
    test("emite [TestOne] do ExampleBloc", () {
      final expectedResponse = [InitialExampleState(), LoadingExampleState(), TestOneReturn()];

      expectLater(bloc, emitsInOrder(expectedResponse));

      bloc.add(TestOne());
    });
  });

  group('TestTwo', () {
    test("emite [TestTwo] do ExampleBloc", () {
      final expectedResponse = [InitialExampleState(), LoadingExampleState(), TestTwoReturn()];

      expectLater(bloc, emitsInOrder(expectedResponse));

      bloc.add(TestTwo());
    });
  });


}