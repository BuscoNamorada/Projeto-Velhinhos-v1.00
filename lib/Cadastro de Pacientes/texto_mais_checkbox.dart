import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';

import 'package:flutter_application_1/Widgets/ckBox.dart';

class TextoMaisCheckbox extends StatelessWidget {
  final String texto;
  const TextoMaisCheckbox({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          texto,
          style: kTelaDeCadastroTextoPadrao,
        ),
        CkBox()
      ],
    );
  }
}
