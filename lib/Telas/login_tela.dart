import 'package:flutter/material.dart';
import 'package:flutter_application_1/Telas/tela_inicial.dart';
import 'package:flutter_application_1/Widgets/caixa_personalizada.dart';
import 'package:flutter_application_1/Widgets/constantes.dart';
import 'package:flutter_application_1/Widgets/caixa_de_texto.dart';
import 'package:flutter_application_1/Widgets/ckBox.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: CaixaPersonalizada(
            cor: Colors.white,
            altura: 410,
            margem: 20,
            bordaCircular: 10,
            sombraCor: kSombraCor,
            filhoCaixa: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Login',
                    style: kLoginTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Seu e-mail', style: kTextoPadraoStyle),
                ),
                CaixaDeTexto(
                  margem: kMargemDosWidgets,
                  altura: 30,
                  bordaCircular: 5,
                  texto: TipoDeTexto.email,
                  hintText: ' email',
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Sua senha', style: kTextoPadraoStyle),
                ),
                CaixaDeTexto(
                  margem: kMargemDosWidgets,
                  altura: 30,
                  bordaCircular: 5,
                  texto: TipoDeTexto.password,
                  hintText: ' password',
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CkBox(),
                        Text('Manter-me logado', style: kTextoPadraoStyle),
                      ],
                    ),
                    CaixaPersonalizada(
                      filhoCaixa: Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                            color: kCorBotaoDeTexto,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      aoInteragir: () {},
                      //TODO: Chamar a tela de recuperação de senha.
                    ),
                    SizedBox(width: kMargemDosWidgets),
                  ],
                ),
                SizedBox(height: 30),
                CaixaPersonalizada(
                  aoInteragir: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TelaInicial(),
                        ));
                  },
                  cor: kCorDoBotao,
                  altura: 30,
                  largura: double.infinity,
                  margem: kMargemDosWidgets,
                  bordaCircular: 5,
                  filhoCaixa: Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: CaixaPersonalizada(
                    altura: 59,
                    cor: Colors.grey.shade300,
                    filhoCaixa: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Ainda não tem conta?',
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 13),
                        ),
                        SizedBox(width: 10),
                        CaixaPersonalizada(
                          altura: 25,
                          largura: 85,
                          bordaCircular: 5,
                          cor: Colors.white,
                          sombraCor: kSombraCor,
                          filhoCaixa: Center(
                            child: Text(
                              'Cadastre-se',
                              style: TextStyle(
                                  color: kCorBotaoDeTexto,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //TODO: direcionar à página de cadastro
                          aoInteragir: () {},
                        ),
                        SizedBox(width: kMargemDosWidgets),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
