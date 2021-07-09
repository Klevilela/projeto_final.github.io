import 'package:flutter/material.dart';
import 'package:projeto_final/model/contato.dart';

class Cadastro extends StatelessWidget {
  final TextEditingController _controllernome = TextEditingController();
  final TextEditingController _controllernumero = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de contato'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextField(
              controller: _controllernome,
              decoration: InputDecoration(
                hintText: 'Nome',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextField(
              controller: _controllernumero,
              decoration: InputDecoration(
                hintText: 'Número',
              ),
            ),
          ),
          ElevatedButton(
            child: Text('Cadastrar Contato'),
            onPressed: () {
              final String nome = _controllernome.text;
              final String numero = _controllernumero.text;

              // ignore: unused_local_variable
              final cadastro = Contato(nome: nome, numero: numero);
              print(cadastro);
            },
          ),
        ],
      ),
    );
  }
}
