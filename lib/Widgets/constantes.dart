/* Criar aqui os widgets de texto, icones e etc para reutilizar
em qualquer parte do código. isso evita a repetição de código.
*/

import 'package:flutter/material.dart';

const kLoginTextStyle = TextStyle(
    fontSize: 40, color: Color(0xFF842382), fontWeight: FontWeight.bold);

const kTextoPadraoStyle = TextStyle(fontSize: 12, color: Colors.black);

const kHintTextStyle = TextStyle(
  textBaseline: TextBaseline.ideographic,
  fontSize: 11,
  color: Colors.black54,
  fontStyle: FontStyle.italic,
);

enum TipoDeTexto {
  email,
  password,
}

const kBoxTextShadow = BoxShadow(color: Colors.black, spreadRadius: 0.5);

var kCorBotaoDeTexto = Colors.blue.shade800;
const kCorDoBotao = Color(0xFF842382);
const kMargemDosWidgets = 12.0;

const kCaixaCor = Colors.white;

const kTamanhoDaCaixa = 150.0;

const kTextoDosBotoesDaTelaInicial =
    TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

const kTextoDaBarra =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

var kCorDaBarra = Color(0xFF842382); //(0xFFd345d1);

var kSombraCor = Colors.grey;

const kTelaDeCadastroTexto =
    TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

const kTelaDeCadastroTextoPadrao =
    TextStyle(fontSize: 11.5, fontWeight: FontWeight.bold);

const kTelaDeCadastroTextoOpcao = TextStyle(fontSize: 12);

const kSizedBox50 = 40.0;
