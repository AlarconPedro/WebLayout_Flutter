import 'dart:html';

import 'package:web_layout/components/components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool logado = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool colapse = false;
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
                Container(
                  width: screenSize.width / 7,
                  padding: EdgeInsets.all(4),
                  color: Colors.lightBlue.shade900,
                  child: Row(
                    children: [
                      Imagem.logo(imagem: 'images/Logo_icone.png'),
                      Texto.textoNavBar(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Botao.botaoNav(
            clique: () {},
            texto: 'Login',
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: screenSize.width / 2,
              color: Colors.grey.shade900,
              child: ListView(
                children: [
                  Texto.textoBarraLateral(),
                  const NavbarCollapse(
                    textTitle: 'Administração',
                    menu1: 'Adm Geral',
                    menu2: 'Adm Conta',
                    menu3: 'Adm Empresas',
                  ),
                  const NavbarCollapse(
                    textTitle: 'Cadastro',
                    menu1: 'Clientes',
                    menu2: 'Funcionários',
                    menu3: '',
                  ),
                  const NavbarCollapse(
                    textTitle: 'Relatórios',
                    menu1: 'Vendas',
                    menu2: 'Funcionários',
                    menu3: 'Clientes',
                    menu4: 'Produtos',
                  ),
                  const NavbarCollapse(
                    textTitle: 'Produtos',
                    menu1: 'Devolvidos',
                    menu2: 'Vendidos',
                    menu3: 'Comprados',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8.0),
            ),
          ),
          // Expanded(
          //   flex: 3,
          //   child: Container(
          //     color: Colors.grey.shade200,
          //     child: Column(
          //       children: [
          //         Texto.textoCorpo(titulo: 'Buscar'),
          //         Texto.pesquisa(),
          //       ],
          //     ),
          //   ),
          // ),
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     color: Colors.grey.shade200,
          //     padding: const EdgeInsets.all(8.0),
          //   ),
          // ),
        ],
      ),
    );
  }
}
