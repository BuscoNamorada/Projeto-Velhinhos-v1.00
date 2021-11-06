// Widget de campo de texto usado em email, senha e etc.

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';

class CaixaDeTexto extends StatefulWidget {
  final TipoDeTexto? texto;
  final String? hintText;
  final double? altura;
  final double? largura;
  final double bordaCircular;
  final double margem;
  const CaixaDeTexto(
      {Key? key,
      this.texto,
      this.hintText,
      this.altura,
      this.largura,
      this.bordaCircular = 0,
      this.margem = 0})
      : super(key: key);

  @override
  State<CaixaDeTexto> createState() => _CaixaDeTextoState();
}

class _CaixaDeTextoState extends State<CaixaDeTexto> {
  // Controlador do textformfield:
  var boxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.altura,
      width: widget.largura,
      margin: EdgeInsets.symmetric(horizontal: widget.margem),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(widget.bordaCircular),
          boxShadow: [kBoxTextShadow]),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: widget.texto == TipoDeTexto.password ? true : false,
          cursorColor: Colors.black,
          cursorWidth: 1,
          cursorHeight: 20,
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontStyle: FontStyle.italic),
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: kHintTextStyle,
              border: InputBorder.none),
          controller: boxController,
        ),
      ),
    );
  }
}

/*
enum Sexo {
  masculino,
  feminino,
}

*/