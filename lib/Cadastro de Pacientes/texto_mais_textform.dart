import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/caixa_de_texto.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'cadastro_caixa_de_texto.dart';

class TextoMaisTextform extends StatelessWidget {
  final String texto;
  const TextoMaisTextform({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            texto,
            style: kTelaDeCadastroTextoPadrao,
          ),
          CadastroCaixaDeTexto()
        ],
      ),
    );
  }
}
