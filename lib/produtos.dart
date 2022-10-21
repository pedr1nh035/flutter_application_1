import 'package:flutter/material.dart';

class Produtos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text(
          'Produtos',
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
    );
  }
}
