import 'package:flutter/material.dart';

class Texto {
  static Widget textoNavBar() {
    return const Padding(
      padding: EdgeInsets.all(4),
      child: Text('Omega Sistemas'),
    );
  }

  static Widget login({
    TextEditingController? controlador,
    String? texto,
    bool senha = false,
    IconData? icone,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
      child: TextField(
        controller: controlador,
        style: const TextStyle(
          color: Colors.white,
        ),
        obscureText: senha,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          hintText: texto,
          prefixIcon: Icon(
            icone,
            color: Colors.white,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
      ),
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

  static Widget textoCorpo({String? titulo}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        titulo!,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 28),
      ),
    );
  }

  static Widget pesquisa() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Expanded(
        flex: 1,
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  static Widget usuarioLogin() {
    return const TextField();
  }
}
