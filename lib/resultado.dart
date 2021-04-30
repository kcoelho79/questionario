import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Pababéns';
    } else if (pontuacao < 12) {
      return 'voce e mane';
    } else if (pontuacao < 16) {
      return 'impressionante';
    } else {
      return 'Nivel Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          onPressed: quandoReiniciarQuestionario, 
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
            ),
          textColor: Colors.pink,
        )
      ],
    );
  }
}
