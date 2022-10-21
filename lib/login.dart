import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagina_inicial.dart';
import 'package:flutter_application_1/pagina_inicial.dart';
import 'package:flutter_application_1/restauracao.dart';

import 'cadastro.dart';

class LoginPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
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
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/img/login.png'),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Container(
              height: 35,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResgatarSenha()),
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
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
                    Color.fromARGB(255, 221, 105, 152),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Inicio()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: TextButton(
                child: Text(
                  'Cadastre-se',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
