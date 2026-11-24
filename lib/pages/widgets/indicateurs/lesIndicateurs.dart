import 'package:flutter/material.dart';
import 'slider_indicateurs.dart';
import 'progression_indicateurs.dart';

// Page de présentation des widgets Slider et ProgressIndicator
class LesIndicateurs extends StatelessWidget {
  const LesIndicateurs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            'Slider & Progression',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Les curseurs (Slider) servent à ajuster une valeur, tandis que les '
            'indicateurs affichent l\'avancement d\'une tâche.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          SliderIndicateurs(),
          ProgressionIndicateurs(),
        ],
      ),
    );
  }
}
