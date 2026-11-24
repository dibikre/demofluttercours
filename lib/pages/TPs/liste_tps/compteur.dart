import 'package:flutter/material.dart';

// TP 2 : Compteur (exemple 2 du cours)
// StatefulWidget : son état (le compteur) évolue avec le temps
class Compteur extends StatefulWidget {
  const Compteur({super.key, this.title = 'Flutter Demo Home Page'});

  final String title;

  @override
  State<Compteur> createState() => _CompteurState();
}

// Classe qui gère l'état du widget
class _CompteurState extends State<Compteur> {
  int _counter = 0;

  // Incrémente le compteur et redessine l'écran grâce à setState
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Méthode appelée à chaque fois que setState est exécuté
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Vous avez incrémenté le compteur :'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text('fois'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
    );
  }
}