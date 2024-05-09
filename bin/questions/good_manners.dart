class GoodManager {
  String question;
  bool isThisGoodManners = false;
  String meuBot = "MeuBOT:\n";
  GoodManager(this.question);

  bool isThisManners() {
    if (question.contains("oi") ||
        question.contains("ola") ||
        question.contains("obrigado")) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains("oi")) {
      print(meuBot + "Bom dia, mano");
    } else if (question.contains("obrigado")) {
      print("De nada, maninho, precisando estamos ai");
    }
  }
}
