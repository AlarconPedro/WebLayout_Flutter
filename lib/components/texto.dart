import 'package:flutter/material.dart';

class Texto {
  static Widget textoNavBar() {
    return const Padding(
      padding: EdgeInsets.all(4),
      child: Text('Omega Sistemas'),
    );
  }

  static Widget login() {
    return const ExpansionTile(
      title: Text('Teste'),
      backgroundColor: Colors.black,
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
