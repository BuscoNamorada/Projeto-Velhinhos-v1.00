// Aqui será feito toda a ficha de cadastro do idoso.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cadastro%20de%20Pacientes/texto_mais_checkbox.dart';
import 'package:flutter_application_1/Cadastro%20de%20Pacientes/texto_mais_textform.dart';
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
              TextoMaisTextform(
                texto: 'Cenário de Prática:',
              ),
              TextoMaisTextform(
                texto: 'Nome do Idoso:',
              ),
              Row(
                //TODO: Criar uma função que faz com que só seja possível escolher uma opção
                children: [
                  Text('Sexo: ', style: kTelaDeCadastroTextoPadrao),
                  SizedBox(width: 10),
                  TextoMaisCheckbox(texto: 'Masculino'),
                  TextoMaisCheckbox(texto: 'Feminino'),
                ],
              ),
              TextoMaisTextform(
                texto: 'Profissão/ ocupação atual:',
              ),
              TextoMaisTextform(
                texto: 'Profissão/ ocupação anterior:',
              ),
              Row(
                children: [
                  Text(
                    'Aposentado: ',
                    style: kTelaDeCadastroTextoPadrao,
                  ),
                  SizedBox(width: 10),
                  TextoMaisCheckbox(texto: 'Sim'),
                  TextoMaisCheckbox(texto: 'Não'),
                ],
              ),
              TextoMaisTextform(
                  texto: 'Caso seja aposentado, há quanto tempo?'),

              //todo: Criar a parte da data de nascimento
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('CRIAR AQUI A PARTE DE NASCIMENTO'),
              ),

              TextoMaisTextform(texto: 'Naturalidade:'),
              TextoMaisTextform(texto: 'Estado:'),
              TextoMaisTextform(texto: 'País:'),

              TextoMaisTextform(texto: 'Raça/Etnia:'),
              TextoMaisTextform(texto: 'Crença religiosa:'),
              Row(
                children: [
                  Text('É praticante?', style: kTelaDeCadastroTextoPadrao),
                  SizedBox(width: 10),
                  TextoMaisCheckbox(texto: 'Sim'),
                  TextoMaisCheckbox(texto: 'Não'),
                ],
              ),
              TextoMaisTextform(texto: 'Há quanto tempo?'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Estado Civil:', style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 6),
                    TextoMaisCheckbox(texto: 'Casado'),
                    TextoMaisCheckbox(texto: 'Solteiro'),
                    TextoMaisCheckbox(texto: 'Viúvo'),
                    TextoMaisCheckbox(texto: 'Separado'),
                    TextoMaisCheckbox(texto: 'Divorciado')
                  ],
                ),
              ),
              TextoMaisTextform(texto: 'Há quanto tempo?'),
              SizedBox(height: 50),

              Text('Renda mensal:', style: kTelaDeCadastroTextoPadrao),
              TextoMaisTextform(texto: 'Salário mínimo vigente:'),
              //TODO: Fazer aqui a parte da renda mensal
              SizedBox(height: 50),

              Text('Escolaridade:', style: kTelaDeCadastroTextoPadrao),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 6),
                    TextoMaisCheckbox(texto: 'Analfabeto'),
                    TextoMaisCheckbox(texto: 'Analfabeto sem escolarização'),
                    TextoMaisCheckbox(
                        texto:
                            'Ensino fundamental incompleto (antigo primário e ginásio)'),
                  ],
                ),
              ),
              // Caso sena ensino fundamental incompleto
              TextoMaisCheckbox(texto: 'Até que série?'),
              TextoMaisCheckbox(texto: 'Número de anos que estudou:'),
            ],
          ),
        ),
      ),
    );
  }
}
