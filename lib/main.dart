import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cadastro%20de%20Pacientes/cadastro_de_paciente.dart';
import 'package:flutter_application_1/Telas/login_tela.dart';
import 'package:flutter_application_1/Telas/tela_inicial.dart';
import 'package:flutter_application_1/Telas/testes_cognitivos.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Testes Cognitivos/MEEM/meem.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: kCorDaBarra,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        )),
    home: SafeArea(
      child: LoginTela(),
    ),
  ));
}
// 1° - LoginTela()
// 2° - TelaInicial()
// 3° - TestesCognitivos()
// 4° - MEEM()
// 5° - CadastroDePaciente()