import 'dart:io';

import 'questions/calculate.dart';
import 'questions/good_manners.dart';
import 'questions/knowledge.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String MeuBot = 'MeuBot:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().meyBotStream(1, 10);

  var subscriber = myStream.listen((event) {}, onDone: () {
    print("terminou ");
    a = false;
  });

  print('-- Iniciando o MeuBot, aguarde..--');

  await BotClock().clock(2);

  print('MeuBot:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(MeuBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManager(usuario).isThisManners()) {
      GoodManager(usuario).goodManners();
    } else if (Calculate(usuario).isTheCalculate()) {
      Calculate(usuario).calculateFunc();
    } else if (knowledge(usuario).isKnowledge()) {
      knowledge(usuario).Knowledge();
    } else {
      await BotClock().clock(2);
      print(MeuBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(MeuBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando MeuBot--');
}
