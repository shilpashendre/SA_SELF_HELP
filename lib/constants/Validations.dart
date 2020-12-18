class Validations {
  static final emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  static isEmailValid(email) => emailValid.hasMatch(email) ? true : false;
}
