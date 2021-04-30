import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  // cada compornente statefull, precisa criar um class para gerenciar seu estado
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Branco', 'nota': 3},
        {'texto': 'Azul', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Jumento', 'nota': 5},
        {'texto': 'cabra', 'nota': 3,},
        {'texto': 'Cadelo', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual  o seu instrutor favorito?',
      'resposta': [
        {'texto': 'Maria', 'nota': 10},
        {'texto': 'Cagao', 'nota': 5},
        {'texto': 'Bundao', 'nota': 3},
        {'texto': 'bostinha', 'nota': 1},
      ],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
      print(_perguntaSelecionada);
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
