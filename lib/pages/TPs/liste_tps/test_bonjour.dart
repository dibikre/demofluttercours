import 'package:flutter/material.dart';

// TP 1 : Test Bonjour (exemple 1 du cours)
// Page qui affiche "Bonjour mes étudiants" au centre de l'écran
class TestBonjour extends StatelessWidget {
  const TestBonjour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Bonjour mes étudiants'),
      ),
    );
  }
}