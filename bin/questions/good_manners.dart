class GoodManager {
  String question;
  bool isThisGoodManners = false;
  String meuBot = "MeuBOT:\n";
  GoodManager(this.question);

  bool isThisManners() {
    if (question.contains("oi") || question.contains("ola")) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }
}
