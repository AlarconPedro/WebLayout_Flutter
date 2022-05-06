import 'package:flutter/material.dart';
import 'package:web_layout/components/components.dart';
import 'package:web_layout/pages/pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usuarioController = TextEditingController();
  final senhaController = TextEditingController();
  bool logado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //color: Colors.grey.shade900,
              width: 500,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.shade900,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Imagem.logoNavBar(
                      imagem: 'images/Logo_Horizontal_branco.png'),
                  Texto.login(
                    controlador: usuarioController,
                    senha: false,
                    texto: 'Digite o Usuário:',
                    icone: Icons.account_circle,
                  ),
                  Texto.login(
                    controlador: senhaController,
                    senha: true,
                    texto: 'Digite a Senha:',
                    icone: Icons.lock_outline,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 25,
                        ),
                        child: ElevatedButton(
                          onPressed: _calcular,
                          child: const Text('Entrar'),
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            backgroundColor: Colors.white,
                            primary: Colors.black,
                            fixedSize: const Size(80, 50),
                          ),
                        ),
                      ),
                      // Botao.botaoLogin(
                      //     contexto: context,
                      //     destino: MaterialPageRoute(
                      //       builder: (context) => const HomePage(),
                      //     ),
                      //     texto: 'Entrar'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _calcular() {
    usuarioController.text == 'Admin' && senhaController.text == 'SMOS2009'
        ? logado = true
        : logado = false;

    logado
        ? Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          )
        : showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text(
                  'Usuário ou Senha Inválido:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                content: const Text(
                  'Por gentileza digite um Usuário ou Senha, correspondente a uma conta válida !',
                  style: TextStyle(fontSize: 20),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(
                          context,
                        );
                      },
                      child: const Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.grey.shade800,
                        primary: Colors.black,
                        fixedSize: const Size(80, 50),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
  }
}
