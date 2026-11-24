import 'package:flutter/material.dart';
import 'switch_controles.dart';
import 'checkbox_controles.dart';

// Page de présentation des widgets Switch et Checkbox
class LesControles extends StatelessWidget {
  const LesControles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Switch & Checkbox',
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
            'Switch et Checkbox permettent à l\'utilisateur d\'activer une option '
            'ou de cocher un ou plusieurs éléments.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          SwitchControles(),
          CheckboxControles(),
        ],
      ),
    );
  }
}
