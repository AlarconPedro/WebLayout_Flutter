import 'package:flutter/material.dart';

class NavbarCollapse extends StatelessWidget {
  final String? textTitle, menu1, menu2, menu3, menu4, menu5;

  const NavbarCollapse({
    Key? key,
    this.textTitle = 'Texto',
    this.menu1 = 'Texto',
    this.menu2 = 'Texto',
    this.menu3 = 'Texto',
    this.menu4 = 'Texto',
    this.menu5 = 'Texto',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        textTitle!,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_drop_down_circle,
        color: Colors.white,
      ),
      collapsedTextColor: Colors.white,
      backgroundColor: Colors.black,
      collapsedBackgroundColor: Colors.grey.shade800,
      children: [
        ListTile(
            title: Text(
          menu1!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
        ListTile(
            title: Text(
          menu2!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
        ListTile(
            title: Text(
          menu3!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
        ListTile(
            title: Text(
          menu4!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
        ListTile(
            title: Text(
          menu5!,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        )),
      ],
    );
  }
}
