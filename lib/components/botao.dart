import 'package:flutter/material.dart';

class Botao {
  static Widget botaoBarraLateral({String? texto, VoidCallback? clique}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ElevatedButton(
        onPressed: clique,
        child: Text(texto!),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade900),
        ),
      ),
    );
  }

  static Widget botaoNav({String? texto, VoidCallback? clique}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: clique,
        child: Text(texto!),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue.shade900),
        ),
      ),
    );
  }
}
