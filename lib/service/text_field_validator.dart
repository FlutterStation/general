String? emailValidator(String? val) {
  if (val == null || val.isEmpty) {
    return 'Required fields';
  } else {
    if (!val.contains('@')) {
      return 'Incorrect email format';
    } else {
      return null;
    }
  }
}

String? passwordValidator(String? val) {
  if (val == null || val.isEmpty) {
    return 'Required fields';
  } else {
    if (val.length <= 6) {
      return 'Password needs more than 6 characters';
    } else {
      return null;
    }
  }
}
