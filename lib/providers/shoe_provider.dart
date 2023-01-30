import 'package:flutter/material.dart';

class ShoeProvider with ChangeNotifier {
  String _assetImage = "assets/img/azul.png";
  double _talla = 9;

  String get assetImage => _assetImage;
  set assetImage(String val) {
    _assetImage = val;
    notifyListeners();
  }

  double get talla => _talla;
  set talla(double val) {
    _talla = val;
    notifyListeners();
  }
}
