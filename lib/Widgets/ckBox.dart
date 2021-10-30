import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';

class CkBox extends StatefulWidget {
  const CkBox({Key? key}) : super(key: key);

  @override
  _CkBoxState createState() => _CkBoxState();
}

class _CkBoxState extends State<CkBox> {
  bool ckBorda = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Checkbox(
        value: ckBorda,
        activeColor: Colors.blue,
        side: BorderSide(color: Colors.black),
        onChanged: (bool? valor) {
          setState(() {
            ckBorda = valor!;
          });
        },
      ),
    );
  }
}
