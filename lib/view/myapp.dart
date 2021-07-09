import 'package:flutter/material.dart';
import 'package:projeto_final/view/cadastro.dart';
import 'package:projeto_final/view/contatos.dart';
import 'package:projeto_final/view/homepage.dart';
import 'package:projeto_final/view/pagina_login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App_Contatos',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/pagina_inicial': (context) => PaginaInicial(),
        '/contatos': (context) => Contatos(),
        '/cadastro': (context) => Cadastro(),
      },
    );
  }
}
