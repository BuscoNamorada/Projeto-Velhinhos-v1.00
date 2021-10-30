import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';
import 'package:flutter_application_1/Widgets/botao_tela_inicial.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/barra_app.dart';
import 'package:flutter_application_1/Testes Cognitivos/MEEM/meem.dart';

class TestesCognitivos extends StatefulWidget {
  const TestesCognitivos({Key? key}) : super(key: key);

  @override
  _TestesCognitivosState createState() => _TestesCognitivosState();
}

class _TestesCognitivosState extends State<TestesCognitivos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BarraApp(
          barraTexto: 'Testes Cognitivos',
          barraIcone: Icons.home,
          aoPressionar: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Selecione o teste a ser realizado',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            BotaoTelaInicial(
              botaoTexto: 'Mini-Exame do Estado Mental',
              nomeImagem: 'brain.png',
              alturaImagem: 100,
              larguraImagem: 90,
              aoInteragir: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MEEM(),
                    ),
                  );
                });
              },
            ),
            BotaoTelaInicial(
              botaoTexto: 'Teste de Fluência Verbal',
              nomeImagem: 'tfv.jpg',
              alturaImagem: 100,
              larguraImagem: 90,
              aoInteragir: () {},
            ),
            BotaoTelaInicial(
              botaoTexto: 'Teste do Relógio',
              nomeImagem: 'relogio.png',
              alturaImagem: 100,
              larguraImagem: 90,
              aoInteragir: () {},
            )
          ],
        ),
      ),
    );
  }
}
