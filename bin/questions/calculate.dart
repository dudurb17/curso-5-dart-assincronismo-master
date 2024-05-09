class Calculate {
  String question;
  bool isThisCalculate = false;
  String meuBot = "MeuBOT:\n";

  Calculate(this.question);

  bool isTheCalculate() {
    if (question.contains("+") ||
        question.contains("-") ||
        question.contains("*") ||
        question.contains("/")) {
      isThisCalculate = true;
    }
    return isThisCalculate;
  }

  calculateFunc() {
    if (question.contains("+")) {
      int soma = question
          .replaceAll(RegExp(r'[^0-9]'), '')
          .split('')
          .map(int.parse)
          .reduce((a, b) => a + b);
      print(soma);
    } else if (question.contains("*")) {
      int soma = question
          .replaceAll(RegExp(r'[^0-9]'), '')
          .split('')
          .map(int.parse)
          .reduce((a, b) => a * b);
      print(soma);
    } else if (question.contains("-")) {
      int soma = question
          .replaceAll(RegExp(r'[^0-9]'), '')
          .split('')
          .map(int.parse)
          .reduce((a, b) => a - b);
      print(soma);
    } else if (question.contains("/")) {
      int soma = question
          .replaceAll(RegExp(r'[^0-9]'), '')
          .split('')
          .map(int.parse)
          .reduce((a, b) => a % b);
      print(soma);
    }
  }
}
