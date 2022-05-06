import 'package:flutter/material.dart';
import 'package:web_layout/pages/pages.dart';

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

  static Widget botaoLogin({
    String? texto,
    BuildContext? contexto,
    MaterialPageRoute? destino,
    Function? acao,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 35,
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            contexto!,
            destino!,
          );
        },
        child: Text(texto!),
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.white,
          primary: Colors.black,
          fixedSize: const Size(80, 50),
        ),
      ),
    );
  }
}
