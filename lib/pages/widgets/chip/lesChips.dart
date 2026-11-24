import 'package:flutter/material.dart';
import 'types_chips.dart';
import 'style_chips.dart';

// Page de présentation des widgets Chip (Material 3)
class LesChips extends StatelessWidget {
  const LesChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chip',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Les puces (Chip) représentent un attribut, un filtre, un choix ou '
            'une action rapide dans un format compact.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          TypesChips(),
          StyleChips(),
        ],
      ),
    );
  }
}
