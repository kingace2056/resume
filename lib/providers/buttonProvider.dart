import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonProvider extends ChangeNotifier {
  bool _isButtonPressed = false;
  Color buttonColor = Colors.transparent;
  Color textColor = Colors.white;

  void SetActive() {
    _isButtonPressed = true;
    buttonColor = Colors.white;
    textColor = Colors.blue;
    notifyListeners();
  }
}
