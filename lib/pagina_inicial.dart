import 'package:flutter/material.dart';
import 'package:flutter_application_1/carrinho.dart';
import 'package:flutter_application_1/perfil.dart';
import 'package:flutter_application_1/produtos.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          'Página Inicial',
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 162, 83, 175),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Meu mundo gamer'),
              subtitle: Text('Suas opções'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              },
            ),
            ListTile(
              title: Text(
                'Produtos',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Produtos()),
                );
              },
            ),
            ListTile(
              title: Text(
                'Carrinho',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Carrinho()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
