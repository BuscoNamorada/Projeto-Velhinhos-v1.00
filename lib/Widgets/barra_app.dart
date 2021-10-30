import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';

class BarraApp extends StatelessWidget {
  final String? barraTexto;
  final IconData? barraIcone;
  final Function()? aoPressionar;
  const BarraApp({
    Key? key,
    this.barraTexto,
    this.barraIcone,
    this.aoPressionar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CaixaPersonalizada(
      filhoCaixa: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            barraTexto!,
            style: kTextoDaBarra,
            textAlign: TextAlign.center,
          ),
          Column(
            children: [
              IconButton(
                onPressed: aoPressionar,
                icon: Icon(
                  barraIcone,
                  size: 35,
                ),
              ),
              SizedBox(height: 7)
            ],
          )
        ],
      ),
    );
  }
}
