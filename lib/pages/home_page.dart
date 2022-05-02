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
        leading: Imagem.logoNavBar(
          imagem: 'images/Logo_horizontal.png',
        ),
        leadingWidth: 270,
        // title: const Text('Omega Sistemas'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Imagem.logo(imagem: 'images/Logo_icone.png'),
                Texto.textoNavBar(),
              ],
            ),
          ),
          Botao.botaoNav(clique: () {}, texto: 'Login'),
        ],
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Texto.textoCorpo(titulo: 'Cadastro Modelo'),
              Texto.pesquisa(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Texto.textoCorpo(titulo: 'Cadastro Modelo'),
              Texto.pesquisa(),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      // body: Row(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Container(
      //       color: Colors.grey.shade600,
      //       width: 270,
      //       height: 600,
      //       child: ListView(
      //         children: [
      //           Texto.textoBarraLateral(),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //           Botao.botaoBarraLateral(
      //             clique: () {},
      //             texto: 'Exemplo 1',
      //           ),
      //         ],
      //       ),
      //     ),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [Texto.textoCorpo()],
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
