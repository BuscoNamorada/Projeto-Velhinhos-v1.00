// Aqui será feito toda a ficha de cadastro do idoso.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/barra_app.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';
import 'package:flutter_application_1/Widgets/ckBox.dart';
import 'package:flutter_application_1/Widgets/caixa_de_texto.dart';

import 'cadastro_caixa_de_texto.dart';

class CadastroDePaciente extends StatefulWidget {
  const CadastroDePaciente({Key? key}) : super(key: key);

  @override
  _CadastroDePacienteState createState() => _CadastroDePacienteState();
}

class _CadastroDePacienteState extends State<CadastroDePaciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BarraApp(
          barraTexto: 'Cadastro de Paciente',
          barraIcone: Icons.home,
          aoPressionar: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'AVALIAÇÃO BÁSICA',
                  style: kTelaDeCadastroTexto,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '1. IDENTIFICAÇÃO',
                style: kTelaDeCadastroTexto,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Cenário de Prática:',
                    style: kTelaDeCadastroTextoPadrao,
                  ),
                  CadastroCaixaDeTexto()
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Nome do Idoso:',
                    style: kTelaDeCadastroTextoPadrao,
                  ),
                  CadastroCaixaDeTexto()
                ],
              ),
              SizedBox(height: 15),
              Row(
                //TODO: Criar uma função que faz com que só seja possível escolher uma opção
                children: [
                  Text('Sexo: ', style: kTelaDeCadastroTextoPadrao),
                  CkBox(),
                  Text('Masculino'),
                  CkBox(),
                  Text('Feminino')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
