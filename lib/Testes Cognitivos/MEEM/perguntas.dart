import 'package:flutter_application_1/Testes%20Cognitivos/MEEM/corpo_das_perguntas.dart';

class Perguntas {
  int _numeroDaPerguntaAtual = 0;
  List<PerguntasEscritas> _perguntasOrientacao = [
    PerguntasEscritas(
        questao: 'Em que ano estamos?', respostaDaQuestao: '2021'),
    PerguntasEscritas(
        questao: 'Em que mês estamos?', respostaDaQuestao: 'Outubro'),
    PerguntasEscritas(
        questao: 'Em que dia do mês estamos?', respostaDaQuestao: '18'),
    PerguntasEscritas(
        questao: 'Em que estação do ano estamos?', respostaDaQuestao: 'Verão'),
    PerguntasEscritas(
        questao: 'Em que dia da semana estamos?',
        respostaDaQuestao: 'Segunda-feira'),
    PerguntasEscritas(
        questao: 'Em que país estamos?', respostaDaQuestao: 'Brasil'),
    PerguntasEscritas(
        questao: 'Em que estado/distrito você mora?',
        respostaDaQuestao: 'Piauí'),
    PerguntasEscritas(
        questao: 'Onde você mora?', respostaDaQuestao: 'Parnaíba'),
    PerguntasEscritas(
        questao: 'Onde estamos agora?', respostaDaQuestao: 'Hospital'),
    PerguntasEscritas(
        questao: 'Em que piso estamos?', respostaDaQuestao: 'Primeiro'),
  ];

  List<PerguntasEscritas> _perguntasRetencao = [
    PerguntasEscritas(questao: 'Pêra', respostaDaQuestao: 'Pêra'),
    PerguntasEscritas(questao: 'Gato', respostaDaQuestao: 'Gato'),
    PerguntasEscritas(questao: 'Bola', respostaDaQuestao: 'Bola'),
  ];

  String obterPerguntasOrientacao() {
    return _perguntasOrientacao[_numeroDaPerguntaAtual].questao;
  }

  String obterPerguntasRetencao() {
    return _perguntasRetencao[_numeroDaPerguntaAtual].questao;
  }

  resetaNumeroDasPerguntas() {
    _numeroDaPerguntaAtual = 0;
  }
}
