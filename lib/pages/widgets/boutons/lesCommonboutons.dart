import 'package:flutter/material.dart';
import 'personnalisation_boutons.dart';

// Construit un bouton à partir de son action (null = désactivé) et de son texte
typedef _ConstruireBouton = Widget Function(
  VoidCallback? onPressed,
  String texte,
);

// Description d'un des 5 types de boutons Material 3
class _TypeBouton {
  final String nom;
  final String classe;
  final String description;
  final _ConstruireBouton simple;
  final _ConstruireBouton avecIcone;

  const _TypeBouton({
    required this.nom,
    required this.classe,
    required this.description,
    required this.simple,
    required this.avecIcone,
  });
}

// Les 5 types de boutons communs de Material 3
final List<_TypeBouton> _types = [
  _TypeBouton(
    nom: 'Elevated',
    classe: 'ElevatedButton',
    description: 'Avec relief (ombre) : utile sur un fond chargé.',
    simple: (onPressed, texte) =>
        ElevatedButton(onPressed: onPressed, child: Text(texte)),
    avecIcone: (onPressed, texte) => ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.send),
      label: Text(texte),
    ),
  ),
  _TypeBouton(
    nom: 'Filled',
    classe: 'FilledButton',
    description: 'Fond plein : pour l\'action principale.',
    simple: (onPressed, texte) =>
        FilledButton(onPressed: onPressed, child: Text(texte)),
    avecIcone: (onPressed, texte) => FilledButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.send),
      label: Text(texte),
    ),
  ),
  _TypeBouton(
    nom: 'Filled Tonal',
    classe: 'FilledButton.tonal',
    description: 'Fond plein adouci : pour une action secondaire importante.',
    simple: (onPressed, texte) =>
        FilledButton.tonal(onPressed: onPressed, child: Text(texte)),
    avecIcone: (onPressed, texte) => FilledButton.tonalIcon(
      onPressed: onPressed,
      icon: Icon(Icons.send),
      label: Text(texte),
    ),
  ),
  _TypeBouton(
    nom: 'Outlined',
    classe: 'OutlinedButton',
    description: 'Simple bordure, sans fond : pour une action secondaire.',
    simple: (onPressed, texte) =>
        OutlinedButton(onPressed: onPressed, child: Text(texte)),
    avecIcone: (onPressed, texte) => OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.send),
      label: Text(texte),
    ),
  ),
  _TypeBouton(
    nom: 'Text',
    classe: 'TextButton',
    description: 'Ni fond ni bordure : pour une action discrète.',
    simple: (onPressed, texte) =>
        TextButton(onPressed: onPressed, child: Text(texte)),
    avecIcone: (onPressed, texte) => TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.send),
      label: Text(texte),
    ),
  ),
];

// Page de présentation des boutons communs
class LesCommonBoutons extends StatelessWidget {
  const LesCommonBoutons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Common boutons',
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
            'Material 3 définit cinq types de boutons. '
            'Appuyez, survolez ou maintenez pour voir les effets.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          for (final type in _types) _CarteType(type: type),
          PersonnalisationBoutons(),
        ],
      ),
    );
  }
}

// Carte présentant un type de bouton dans ses différents états
class _CarteType extends StatelessWidget {
  final _TypeBouton type;

  const _CarteType({required this.type});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type.nom,
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),
            Text(
              type.classe,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 6),
            Text(type.description),
            SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                type.simple(() {}, 'Actif'),
                type.simple(null, 'Désactivé'),
                type.avecIcone(() {}, 'Avec icône'),
                type.avecIcone(null, 'Icône désactivée'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}