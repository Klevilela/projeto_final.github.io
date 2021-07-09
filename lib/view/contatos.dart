import 'package:flutter/material.dart';
import 'package:projeto_final/controller/lista_contatos.dart';

class Contatos extends StatefulWidget {
  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  final lista = {...ListaContatos};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text('$i- ' + lista.elementAt(i).nome),
          );
        },
      ),
    );
  }
}
 //itemBuilder: (context, index) => Text(lista.elementAt(index).nome),