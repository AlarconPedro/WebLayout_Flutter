import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final VoidCallback? clique;
  final String texto;

  const Botao({Key? key, this.clique, this.texto = 'Home'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: clique,
        child: Text(texto),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.lightBlue.shade900)),
      ),
    );
  }
}
