import 'package:flutter/material.dart';
import 'package:liveretailapp/examples/bloc2/valueBloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //regra de negócio
  ValueBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ValueBloc();
  }

  @override
  Widget build(BuildContext context) {
    print('init');
    Pessoa person = new Pessoa(2.0);

    return Material(
      color: Color.lerp(Colors.blue, Colors.green, 0.0),
      child: StreamBuilder(
          stream: bloc.output,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Value: ${person.valor}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 25,
                  ),
                  Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.black,
                      min: 0.0,
                      max: 10.0,
                      onChanged: (double newValue) {
                        person.valor = newValue;
                        bloc.onChanged(person);
                      } ,
                      value: person.valor/* bloc.valorContador*/),
                ]);
          }),
    );
  }
}
