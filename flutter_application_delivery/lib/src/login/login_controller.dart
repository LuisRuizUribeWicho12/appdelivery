import 'package:flutter/material.dart';

class LogginControler {
  final BuildContext context;

  LogginControler(this.context);

  void goToRegisterPage() {
    Navigator.pushNamed(context, 'register');
  }
}
