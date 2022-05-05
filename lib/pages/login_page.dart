import 'package:flutter/material.dart';
import 'package:web_layout/components/botao.dart';
import 'package:web_layout/components/components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  const Padding(
                    padding: EdgeInsets.all(35),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term',
                        prefixIcon: Icon(Icons.access_time_rounded),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(35),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('OK'),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Colors.black,
                            fixedSize: const Size(80, 50),
                          ),
                        ),
                      ),
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
}
