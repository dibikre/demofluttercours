import 'package:flutter/material.dart';

// Carte avec titre (et description) regroupant des exemples d'un widget
class SectionCard extends StatelessWidget {
  final String titre;
  final String? description;
  final Widget child;

  const SectionCard({
    super.key,
    required this.titre,
    this.description,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final texte = description;
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titre, style: TextStyle(fontSize: 22, color: Colors.green)),
            if (texte != null) ...[SizedBox(height: 6), Text(texte)],
            SizedBox(height: 12),
            child,
          ],
        ),
      ),
    );
  }
}

// Un exemple : le widget avec sa légende en dessous
class ExempleLegende extends StatelessWidget {
  final String legende;
  final Widget child;

  const ExempleLegende({super.key, required this.legende, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 130),
          child: Text(
            legende,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

// Cellule d'une grille : zone de hauteur fixe pour le widget (centré),
// puis le titre en dessous. Les titres restent ainsi alignés d'une cellule à l'autre.
class CelluleGrille extends StatelessWidget {
  final String titre;
  final String? sousTitre;
  final Widget child;
  final double largeur;
  final double hauteur;

  const CelluleGrille({
    super.key,
    required this.titre,
    this.sousTitre,
    required this.child,
    this.largeur = 92,
    this.hauteur = 80,
  });

  @override
  Widget build(BuildContext context) {
    final sous = sousTitre;
    return SizedBox(
      width: largeur,
      child: Column(
        children: [
          SizedBox(height: hauteur, child: Center(child: child)),
          SizedBox(height: 4),
          Text(
            titre,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, color: Colors.green),
          ),
          if (sous != null)
            Text(
              sous,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
        ],
      ),
    );
  }
}