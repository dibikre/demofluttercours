import 'package:flutter/material.dart';
import '../menu.bottom.dart';

class ListeChapitre extends StatefulWidget {
  const ListeChapitre({super.key});

  @override
  State<ListeChapitre> createState() => _ListeChapitreState();
}

class _ListeChapitreState extends State<ListeChapitre> {
  final List<String> _chapitres = [
    'Chapitre 1: Introduction',
    'Chapitre 2: Installation, création de la première application sous Android',
    'Chapitre 3: Architecture du Framework Flutter',
    'Chapitre 4: Langage de programmation Dart',
    'Chapitre 5: Widgets et Layouts en Flutter',
    'Chapitre 6: Gestion des évènements, de navigation et de routage en Flutter',
    'Chapitre 7: Animation en Flutter',
    'Chapitre 8: Accès à REST API',
    'Chapitre 9: Concepts des Bases de données',
    'Chapitre 10: Tests et déploiement',
  ];

  // Les chapitres 1 à 5 sont cochés par défaut
  late final List<bool> _coches = List.generate(
    _chapitres.length,
    (index) => index < 5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Liste des cours',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: _chapitres.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            value: _coches[index],
            onChanged: (valeur) {
              setState(() {
                _coches[index] = valeur ?? false;
              });
            },
            title: Text(_chapitres[index], style: TextStyle(fontSize: 18)),
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.green,
          );
        },
      ),
      bottomNavigationBar: MenuBottom(currentIndex: 1),
    );
  }
}