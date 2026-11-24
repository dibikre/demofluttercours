import 'package:flutter/material.dart';

// Onglet qui indique quel fichier exécuter pour interagir avec la console
class OngletExecuter extends StatelessWidget {
  final String titre;
  final String description;
  final String fichier; // chemin du fichier console à exécuter

  const OngletExecuter({
    super.key,
    required this.titre,
    required this.description,
    required this.fichier,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titre,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 12),
          Text(description, style: TextStyle(fontSize: 16)),
          SizedBox(height: 24),
          Text(
            'Exécutez le fichier pour interagir avec la console :',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            color: Colors.black87,
            child: SelectableText(
              'dart run $fichier',
              style: TextStyle(
                color: Colors.greenAccent,
                fontFamily: 'monospace',
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'À lancer dans le terminal, depuis la racine du projet (demofluttercours).',
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}