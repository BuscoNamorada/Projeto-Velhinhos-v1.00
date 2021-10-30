import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';

class BotaoTelaInicial extends StatelessWidget {
  final String? botaoTexto;
  final String? nomeImagem;
  final double? alturaImagem;
  final double? larguraImagem;
  final Function()? aoInteragir;
  const BotaoTelaInicial(
      {Key? key,
      this.botaoTexto,
      this.nomeImagem,
      this.aoInteragir,
      this.alturaImagem,
      this.larguraImagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CaixaPersonalizada(
      margem: kMargemDosWidgets,
      altura: kTamanhoDaCaixa,
      largura: kTamanhoDaCaixa,
      cor: kCaixaCor,
      bordaCircular: 10,
      sombraCor: kSombraCor,
      filhoCaixa: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text(
              botaoTexto!,
              textAlign: TextAlign.center,
              style: kTextoDosBotoesDaTelaInicial,
            ),
          ),
          Image.asset(
            'assets/imagens/$nomeImagem',
            height: alturaImagem,
            width: larguraImagem,
          ),
        ],
      ),
      aoInteragir: aoInteragir,
    );
  }
}
