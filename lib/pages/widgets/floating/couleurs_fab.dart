import 'package:flutter/material.dart';
import '../section_card.dart';

// Les correspondances de couleurs du ColorScheme pour un FAB
class CouleursFab extends StatelessWidget {
  const CouleursFab({super.key});

  // Un FAB large avec ses couleurs et sa légende
  Widget _fab(String legende, Color? texte, Color? fond) {
    return ExempleLegende(
      legende: legende,
      child: FloatingActionButton.large(
        heroTag: null,
        foregroundColor: texte,
        backgroundColor: fond,
        onPressed: () {},
        child: Icon(Icons.edit_outlined),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final couleurs = Theme.of(context).colorScheme;

    return SectionCard(
      titre: 'Couleurs',
      description: 'foregroundColor (icône) et backgroundColor (fond).',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          _fab('Par défaut', null, null),
          _fab('Surface', couleurs.primary, couleurs.surface),
          _fab(
            'Secondary',
            couleurs.onSecondaryContainer,
            couleurs.secondaryContainer,
          ),
          _fab(
            'Tertiary',
            couleurs.onTertiaryContainer,
            couleurs.tertiaryContainer,
          ),
          _fab('Personnalisé', Colors.white, Colors.green),
        ],
      ),
    );
  }
}