import 'package:flutter/material.dart';
import 'package:flutter_application_1/Testes Cognitivos/MEEM/perguntas.dart';
import 'package:flutter_application_1/Widgets/barra_app.dart';

Perguntas perguntas = Perguntas();

class MEEM extends StatefulWidget {
  const MEEM({Key? key}) : super(key: key);

  @override
  _MEEMState createState() => _MEEMState();
}

class _MEEMState extends State<MEEM> {
  int marcadorDePontos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BarraApp(
          barraTexto: 'MEEM',
        ),
      ),
      //TODO: aqui vai ser criado o exame
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  perguntas.obterPerguntasOrientacao(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
