class ValidaInputText {
  static bool validaCaracteresEspeciais(String inputText) {
    RegExp regex = RegExp(r'[^\w\s]');
    return regex.hasMatch(inputText);
  }
}
