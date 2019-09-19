import 'dart:async';

class ValueBloc {
  Pessoa _valorContador = new Pessoa(0.1);

  StreamController _controller = StreamController();

  Stream get output => _controller.stream;

  onChanged(Pessoa v) {
    print(v._valor);
    _valorContador = v;
    _controller.sink.add(_valorContador);
  }

  Pessoa get valorContador {
    return _valorContador;
  }

  void dispose() {
    _controller.close();
  }
}

class Pessoa {
  double _valor;
  // ignore: unnecessary_getters_setters
  double get valor => _valor;
  // ignore: unnecessary_getters_setters
  set valor(double valor) => _valor = valor;

  Pessoa(this._valor);
}
