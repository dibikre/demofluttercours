import 'package:flutter/material.dart';
import '../section_card.dart';

// Les 4 types d'IconButton de Material 3
enum VarianteIconButton {
  standard('Standard', 'IconButton'),
  filled('Filled', 'IconButton.filled'),
  filledTonal('Filled Tonal', 'IconButton.filledTonal'),
  outlined('Outlined', 'IconButton.outlined');

  final String nom;
  final String classe;

  const VarianteIconButton(this.nom, this.classe);

  // Construit le bouton de ce type (onPressed null = désactivé,
  // isSelected non null = bouton à bascule)
  Widget construire({
    required Widget icon,
    required VoidCallback? onPressed,
    Widget? selectedIcon,
    bool? isSelected,
    String? tooltip,
  }) {
    return switch (this) {
      VarianteIconButton.standard => IconButton(
        icon: icon,
        onPressed: onPressed,
        selectedIcon: selectedIcon,
        isSelected: isSelected,
        tooltip: tooltip,
      ),
      VarianteIconButton.filled => IconButton.filled(
        icon: icon,
        onPressed: onPressed,
        selectedIcon: selectedIcon,
        isSelected: isSelected,
        tooltip: tooltip,
      ),
      VarianteIconButton.filledTonal => IconButton.filledTonal(
        icon: icon,
        onPressed: onPressed,
        selectedIcon: selectedIcon,
        isSelected: isSelected,
        tooltip: tooltip,
      ),
      VarianteIconButton.outlined => IconButton.outlined(
        icon: icon,
        onPressed: onPressed,
        selectedIcon: selectedIcon,
        isSelected: isSelected,
        tooltip: tooltip,
      ),
    };
  }
}

// Grille des 4 types : chaque cellule contient deux boutons (actif et désactivé)
// avec le nom du type en dessous. `boutons` construit les boutons d'un type.
class GrilleVariantes extends StatelessWidget {
  final List<Widget> Function(int index, VarianteIconButton variante) boutons;

  const GrilleVariantes({super.key, required this.boutons});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 16,
      children: [
        for (final (i, variante) in VarianteIconButton.values.indexed)
          CelluleGrille(
            largeur: 140,
            titre: variante.nom,
            sousTitre: variante.classe,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final bouton in boutons(i, variante))
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: bouton,
                  ),
              ],
            ),
          ),
      ],
    );
  }
}