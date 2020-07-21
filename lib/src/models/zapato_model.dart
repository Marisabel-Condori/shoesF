import 'dart:ffi';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier{
  double _talla = 9.0;
  String _assetImage = 'assets/imgs/azul.png';

  double get talla => this._talla;
  set talla(double nro){
    this._talla = nro;
    notifyListeners();
  }

  String get assetImage => this._assetImage;
  set assetImage(String img){
    this._assetImage = img;
    notifyListeners();
  }
}