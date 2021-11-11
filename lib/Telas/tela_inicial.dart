import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cadastro%20de%20Pacientes/cadastro_de_paciente.dart';
import 'package:flutter_application_1/Widgets/barra_app.dart';
import 'package:flutter_application_1/Widgets/botao_tela_inicial.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';
import 'package:flutter_application_1/Telas/testes_cognitivos.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BarraApp(
          barraTexto: 'Nome do App',
          barraIcone: Icons.account_circle,
          aoPressionar: () {},
        ),
        backgroundColor: kCorDaBarra,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //BarraApp(barraTexto: 'App Velhinhos'),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoTelaInicial(
                  botaoTexto: 'Realizar Testes Cognitivos',
                  nomeImagem: 'testes cognitivos.png',
                  alturaImagem: 100,
                  larguraImagem: 110,
                  aoInteragir: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TestesCognitivos(),
                          ));
                    });
                  },
                ),
                BotaoTelaInicial(
                  botaoTexto: 'Fazer Relatórios',
                  nomeImagem: 'relatorios.png',
                  alturaImagem: 90,
                  larguraImagem: 80,
                  aoInteragir: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoTelaInicial(
                  botaoTexto: 'Lista de Pacientes',
                  nomeImagem: 'lista.jpg',
                  larguraImagem: 100,
                  alturaImagem: 110,
                  aoInteragir: () {},
                ),
                BotaoTelaInicial(
                  botaoTexto: 'Cadastrar Paciente',
                  nomeImagem: 'add paciente.png',
                  alturaImagem: 90,
                  larguraImagem: 80,
                  aoInteragir: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CadastroDePaciente(),
                          ));
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoTelaInicial(
                  botaoTexto: 'Editar Testes Cognitivos',
                  nomeImagem: 'editar testes.png',
                  larguraImagem: 80,
                  alturaImagem: 85,
                  aoInteragir: () {},
                ),
                BotaoTelaInicial(
                  botaoTexto: 'Configurações',
                  nomeImagem: 'settings.png',
                  larguraImagem: 95,
                  alturaImagem: 100,
                  aoInteragir: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
