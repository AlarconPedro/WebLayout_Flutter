import 'dart:html';

import 'package:web_layout/components/components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Painel Modelo'),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: NavLogo(),
          ),
          Botao(
            clique: () {},
            texto: 'Sobre',
          ),
          Botao(
            clique: () {},
            texto: 'Galeria',
          ),
          Botao(
            clique: () {},
            texto: 'Carrinho',
          ),
          Botao(
            clique: () {},
            texto: 'Login',
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            color: Colors.grey.shade600,
            width: 300,
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const NavLogo(),
                Botao(
                  clique: () {},
                  texto: 'Carrinho',
                ),
                Botao(
                  clique: () {},
                  texto: 'Carrinho',
                ),
                Botao(
                  clique: () {},
                  texto: 'Carrinho',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
