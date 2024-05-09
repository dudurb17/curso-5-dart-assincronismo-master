class knowledge {
  String question;
  bool isThisKnowledge = false;
  String meuBot = "MeuBOT:\n";
  knowledge(this.question);

  bool isKnowledge() {
    if (question.contains("sabe")) {
      isThisKnowledge = true;
    }
    return isThisKnowledge;
  }

  Knowledge() {
    if (question.contains("sabe")) {
      print(meuBot + "Sei calcular, mandar oi, e falar as horas");
    }
  }
}
