import 'package:flutter/material.dart';

class Imagem {
  static Widget logo({String? imagem}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
      child: Image.network(imagem!),
    );
  }

  static Widget logoNavBar({String? imagem}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(imagem!),
    );
  }
}
