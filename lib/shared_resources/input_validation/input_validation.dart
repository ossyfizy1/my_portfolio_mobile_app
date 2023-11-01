class Validator {
// for text and number
  static String? validateTextField(fieldValue) {
    String pattern = r'^[a-z A-Z 0-9]';
    RegExp regExp = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field";
    } else if (!regExp.hasMatch(fieldValue)) {
      return "* required field";
    }
    return null;
  }

  // for text only
  static String? validateTextForAlphabet(fieldValue) {
    String pattern = r'^[a-z A-Z 0-9]';
    RegExp regExp = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field must be alphabet";
    } else if (!regExp.hasMatch(fieldValue)) {
      return "* required field must be alphabet";
    }

    // check if it contains or special characters
    if (fieldValue.toString().contains(RegExp(r"[0-9]")) ||
        (fieldValue.toString().contains(RegExp(r'[/!@#$%^&*(),.?":{}|<>]')))) {
      return "* required field must be alphabet";
    }

    return null;
  }

  static String? validateDigitsField(fieldValue) {
    String pattern = r'^[0-9]';
    RegExp regExp = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field must be number or enter Zero";
    } else if (!regExp.hasMatch(fieldValue)) {
      return "* required field must be number or enter Zero";
    }
    return null;
  }

  static String? validateDropDown(fieldValue) {
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field";
    }

    return null;
  }

  static String? validateEmail(fieldValue) {
    var pattern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    RegExp regex = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field must be a valid email";
    } else if (!regex.hasMatch(fieldValue)) {
      return "* required field must be a valid email";
    }
    return null;
  }

  static String? validateMobile(fieldValue) {
    String pattern = r'(^(?:[+0]9)?[0-9]{11}$)';
    RegExp regExp = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field must be 11 digits";
    } else if (!regExp.hasMatch(fieldValue)) {
      return "* required field must be 11 digits";
    }
    return null;
  }

  static String? validateBVN(fieldValue) {
    String pattern = r'(^(?:[+0]9)?[0-9]{11}$)';
    RegExp regExp = RegExp(pattern);
    if (fieldValue == null || fieldValue.toString().isEmpty) {
      return "* required field must be 11 digits";
    } else if (!regExp.hasMatch(fieldValue)) {
      return "* required field must be 11 digits";
    }
    return null;
  }

  // static bool isPasswordValid(String password) {
  //   if (password.length < 7) return false;
  //   if (!password.contains(RegExp(r"[a-z]"))) return false;
  //   if (!password.contains(RegExp(r"[A-Z]"))) return false;
  //   if (!password.contains(RegExp(r"[0-9]"))) return false;
  //   if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) return false;
  //   return true;
  // }

  static String? isPasswordValid(password) {
    if (password.length < 8) {
      return "* password length must 8 character or more";
    }
    if (!password.contains(RegExp(r"[a-z]"))) {
      return "* must contain a lower letter";
    }
    if (!password.contains(RegExp(r"[A-Z]"))) {
      return "* must contain a upper letter";
    }
    if (!password.contains(RegExp(r"[0-9]"))) {
      return "* must contain a number";
    }
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "* must contain a special character";
    }

    return null;
  }
}
