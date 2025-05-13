// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Contatos';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    contatos[index].nomeCompleto[0],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              );
            },
          )),
    );
  }
}

class Contato {
  String nomeCompleto;
  String email;

  Contato({required this.email, required this.nomeCompleto});
}

List<Contato> contatos = [
  Contato(email: "Macoco@email.com", nomeCompleto: "Macoco"),
  Contato(email: "Ana@email.com", nomeCompleto: "Ana"),
  Contato(email: "Sophia@email.com", nomeCompleto: "Sophia"),
  Contato(email: "Livia@email.com", nomeCompleto: "Livia"),
  Contato(email: "Luizao@email.com", nomeCompleto: "Luizao"),
  Contato(email: "Arthur@email.com", nomeCompleto: "Arthur"),
];
