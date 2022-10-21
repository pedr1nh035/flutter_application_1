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
        child: ListView(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/roleta.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 31, 10, 34),
                  ],
                ),
                borderRadius: BorderRadius.all(

                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    'VIDEO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Video()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       ListTile(
      //         title: Text('Meu mundo gamer'),
      //         subtitle: Text('Suas opções'),
      //         onTap: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => Perfil()));
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Produtos',
      //         ),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => Produtos()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Carrinho',
      //         ),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => Carrinho()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
