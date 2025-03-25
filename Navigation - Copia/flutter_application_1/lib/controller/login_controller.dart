import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier{

  final txtNome = TextEditingController();
  final txtEmail = TextEditingController();
  bool _aceitarTermos = false;

  bool get aceitarTermos => _aceitarTermos;

  void setAceitarTermos (valor) {
    _aceitarTermos = valor;
    notifyListeners();

  }

  void limpar () {
    txtNome.clear();
    txtEmail.clear();
    _aceitarTermos = false;
    notifyListeners();
  }

}///