import 'package:flutter/material.dart';
import 'bordures_textfield.dart';
import 'saisie_textfield.dart';

// Page de présentation du widget TextField
class LesTextField extends StatelessWidget {
  const LesTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextField',
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
            'TextField permet la saisie de texte avec de nombreuses options de '
            'décoration (InputDecoration), masquage et validation.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          BorduresTextField(),
          SaisieTextField(),
        ],
      ),
    );
  }
}
