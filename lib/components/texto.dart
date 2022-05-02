import 'package:flutter/material.dart';

class Texto {
  static Widget textoNavBar() {
    return const Padding(
      padding: EdgeInsets.all(4),
      child: Text('Omega Sistemas'),
    );
  }

  static Widget textoBarraLateral() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
      child: Text(
        'Configurações',
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  static Widget textoCorpo() {
    return Text('Cadastro');
  }
}
