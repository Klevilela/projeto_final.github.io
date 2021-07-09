import 'package:flutter/material.dart';
//import 'package:projeto_final/view/homepage.dart';

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App de contatos'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              child: Image.asset('assets/imagens/ifpi.jpg'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Lista de Contatos'),
              onPressed: () {
                Navigator.pushNamed(context, '/contatos');
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text('Cadastrar nome'),
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: null, child: Text('Mapas')),
          ],
        ),
      ),
    );
  }
}
