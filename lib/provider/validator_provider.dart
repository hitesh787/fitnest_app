import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormNotifier extends ChangeNotifier {
  var _formMap = {};
  final formKey = GlobalKey<FormState>();

  FormNotifier() {
    _formMap = {
      'name': FormItem(
        errorMessage: 'Please enter valid password',
        formatters: [
          FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s"))
        ],
      ),
      'email': const FormItem(
        errorMessage: 'Please enter valid email',
      ),
      'phone': const FormItem(
        errorMessage: 'Please enter valid phone',
      ),
      'submit': const FormItem(),
    };
  }

  FormItem get name => _formMap['name'];
  FormItem get email => _formMap['email'];
  FormItem get phone => _formMap['phone'];
  FormItem get submit => _formMap['submit'];


  validateName(String? val) {
    if (null != val && !val.isValidName) {
      return name.errorMessage;
    }
    return null;
  }

  validateEmail(String? val) {
    if (null != val && !val.isValidEmail) {
      return email.errorMessage;
    }
    return null;
  }

  validPhone(String? val) {
    if (null != val && !val.isValidPhone) {
      return phone.errorMessage;
    }
    return null;
  }

  void validateForm() {
    if (formKey.currentState!.validate()) {

    }
  }

}


class FormItem {
  final String? errorMessage;
  final List<TextInputFormatter> formatters;
  const FormItem({
    this.formatters = const [],
    this.errorMessage,
  });
}


extension StringExtension on String {

  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
    RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^(?:[+0]9)?[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }

}