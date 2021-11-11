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
        backgroundColor: kCorDaBarra,
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
              SizedBox(height: 5),
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
              SizedBox(height: 5),
              TextoMaisTextform(
                texto: 'Cenário de Prática:',
              ),
              TextoMaisTextform(
                texto: 'Nome do Idoso:',
              ),
              SizedBox(height: kSizedBox50),

              Row(
                //TODO: Criar uma função que faz com que só seja possível escolher uma opção
                children: [
                  Text('Sexo: ', style: kTelaDeCadastroTextoPadrao),
                  SizedBox(width: 10),
                  TextoMaisCheckbox(texto: 'Masculino'),
                  TextoMaisCheckbox(texto: 'Feminino'),
                ],
              ),
              SizedBox(height: kSizedBox50),

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
              SizedBox(height: kSizedBox50),

              //todo: Criar a parte da data de nascimento
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('CRIAR AQUI A PARTE DE NASCIMENTO'),
              ),
              SizedBox(height: kSizedBox50),

              TextoMaisTextform(texto: 'Naturalidade:'),
              TextoMaisTextform(texto: 'Estado:'),
              TextoMaisTextform(texto: 'País:'),
              SizedBox(height: kSizedBox50),

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
              SizedBox(height: kSizedBox50),

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
              SizedBox(height: kSizedBox50),

              Text('Renda mensal:', style: kTelaDeCadastroTextoPadrao),
              TextoMaisTextform(texto: 'Salário mínimo vigente:'),
              //TODO: Fazer aqui a parte da renda mensal
              SizedBox(height: kSizedBox50),

              Text('Escolaridade:', style: kTelaDeCadastroTextoPadrao),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(texto: 'Analfabeto'),
                    TextoMaisCheckbox(texto: 'Analfabeto sem escolarização'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(
                        texto:
                            'Ensino fundamental incompleto (antigo primário e ginásio)'),
                  ],
                ),
              ),
              //TODO: Fazer um método que só chama esses dois abaixo se o usuário selecionar fundamental incompleto.
              TextoMaisTextform(texto: 'Até que série?'),
              TextoMaisTextform(texto: 'Número de anos que estudou:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(
                        texto:
                            'Ensino fundamental completo (antigo primário e ginásio)'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(
                        texto:
                            'Ensino médio incompleto (antigo colegial ou normal)'),
                  ],
                ),
              ),
              //TODO: Fazer um método que só chama esses dois abaixo se o usuário selecionar ensino médio incompleto.
              TextoMaisTextform(texto: 'Até que série?'),
              TextoMaisTextform(texto: 'Número de anos que estudou:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(
                        texto:
                            'Ensino médio completo (antigo colegial ou normal)'),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(texto: 'Superior incompleto'),
                  ],
                ),
              ),
              //TODO: Fazer um método que só chama esses dois abaixo se o usuário selecionar superior incompleto.
              TextoMaisTextform(texto: 'Número de anos que estudou:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    TextoMaisCheckbox(texto: 'Superior completo'),
                    TextoMaisCheckbox(texto: 'Pós-graduação'),
                  ],
                ),
              ),
              SizedBox(height: kSizedBox50),
              TextoMaisTextform(texto: 'Endereço:'),
              TextoMaisTextform(texto: 'Ponto de Referência:'),
              TextoMaisTextform(texto: 'Telefone:'),
              TextoMaisTextform(texto: 'E-mail:'),
              TextoMaisTextform(texto: 'Mora com quem?:'),
              TextoMaisTextform(texto: 'Grau de parentesco:'),
              SizedBox(height: kSizedBox50),

              Text('Em caso de necessidade, entrar em contato com: ',
                  style: kTelaDeCadastroTextoPadrao),
              TextoMaisTextform(texto: 'Nome:'),

              //TODO: fazer a data de nascimento
              Text('FAZER A DATA DE NASCIMENTO AQUI'),

              TextoMaisTextform(texto: 'Endereço:'),
              TextoMaisTextform(texto: 'Ponto de Referência:'),
              TextoMaisTextform(texto: 'Telefone(s):'),
              SizedBox(height: kSizedBox50),

              Text('Situação de moradia e saneamento: ',
                  style: kTelaDeCadastroTextoPadrao),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Tipo de casa: ', style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Térrea'),
                    TextoMaisCheckbox(texto: 'Apartamento'),
                    TextoMaisCheckbox(texto: 'Sobrado'),
                  ],
                ),
              ),
              //TODO: Criar um método que só chama essa opção se for selecionado apartamento
              TextoMaisTextform(texto: 'Mora no andar:'),

              //TODO: Criar um método que só chama essa opção se for selecionado sobrado
              TextoMaisTextform(texto: 'N° de andares:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Tipo de construção: ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Tijolo/adobe'),
                    TextoMaisCheckbox(texto: 'Taipa'),
                    TextoMaisCheckbox(texto: 'Madeira'),
                    TextoMaisCheckbox(texto: 'Material aproveitado'),
                  ],
                ),
              ),

              TextoMaisTextform(texto: 'Outro:'),
              TextoMaisTextform(texto: 'Número de cômodos:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Possui energia elétrica? ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Sim'),
                    TextoMaisCheckbox(texto: 'Não'),
                  ],
                ),
              ),
              TextoMaisTextform(texto: 'Caso não, por quê?'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Tratamento de água: ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Filtração'),
                    TextoMaisCheckbox(texto: 'Fervura'),
                    TextoMaisCheckbox(texto: 'Coloração'),
                    TextoMaisCheckbox(texto: 'Sem tratamento'),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Abastecimento de água: ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Rede pública'),
                    TextoMaisCheckbox(texto: 'Poço ou nascente'),
                  ],
                ),
              ),
              TextoMaisTextform(texto: 'Outro:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Destino do lixo: ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Coletado'),
                    TextoMaisCheckbox(texto: 'Queimado/enterrado'),
                    TextoMaisCheckbox(texto: 'Céu aberto'),
                  ],
                ),
              ),
              TextoMaisTextform(texto: 'Outro:'),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Coleta seletiva? ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Sim'),
                    TextoMaisCheckbox(texto: 'Não'),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Text('Destino de fezes/urina: ',
                        style: kTelaDeCadastroTextoPadrao),
                    SizedBox(width: 5),
                    TextoMaisCheckbox(texto: 'Sistema de esgoto (rede local)'),
                    TextoMaisCheckbox(texto: 'Fossa'),
                    TextoMaisCheckbox(texto: 'Céu aberto'),
                  ],
                ),
              ),
              TextoMaisTextform(texto: 'Outro:'),

              // FIM DA ETAPA DE IDENTIFICAÇÃO
              SizedBox(height: kSizedBox50),
              Text(
                '1. INFORMAÇÕES IMPORTANTES',
                style: kTelaDeCadastroTexto,
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
