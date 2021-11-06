import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';

class CadastroCaixaDeTexto extends StatelessWidget {
  final TipoDeTexto? texto;
  final String? hintText;
  final double? altura;
  final double? largura;
  final double bordaCircular;
  final double margem;
  const CadastroCaixaDeTexto(
      {Key? key,
      this.texto,
      this.hintText,
      this.altura,
      this.largura,
      this.bordaCircular = 0,
      this.margem = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 21,
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(bordaCircular),
            boxShadow: [kBoxTextShadow]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            obscureText: texto == TipoDeTexto.password ? true : false,
            cursorColor: Colors.black,
            cursorWidth: 1,
            cursorHeight: 20,
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontStyle: FontStyle.italic),
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: kHintTextStyle,
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
