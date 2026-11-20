import 'package:flutter/material.dart';
import '../../section_card.dart';

// Paramètres de style propres au FAB extended
class StyleExtended extends StatelessWidget {
  const StyleExtended({super.key});

  // Un FAB extended avec les paramètres de style à tester
  Widget _fab(
    String legende,
    String label, {
    double? espacement,
    EdgeInsetsGeometry? padding,
    TextStyle? style,
    ShapeBorder? forme,
    Color? texte,
    Color? fond,
  }) {
    return ExempleLegende(
      legende: legende,
      child: FloatingActionButton.extended(
        heroTag: null,
        onPressed: () {},
        icon: Icon(Icons.add),
        label: Text(label),
        extendedIconLabelSpacing: espacement,
        extendedPadding: padding,
        extendedTextStyle: style,
        shape: forme,
        foregroundColor: texte,
        backgroundColor: fond,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Style du extended',
      description: 'Espacement, marges, texte, forme et couleurs.',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          _fab('extendedIconLabelSpacing: 4', 'Proche', espacement: 4),
          _fab('extendedIconLabelSpacing: 24', 'Éloigné', espacement: 24),
          _fab(
            'extendedPadding',
            'Large',
            padding: EdgeInsets.symmetric(horizontal: 40),
          ),
          _fab(
            'extendedTextStyle',
            'Gras',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          _fab('shape par défaut (StadiumBorder)', 'Stade'),
          _fab(
            'shape : carré arrondi',
            'Carré',
            forme: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          _fab(
            'Couleurs',
            'Vert',
            texte: Colors.white,
            fond: Colors.green,
          ),
        ],
      ),
    );
  }
}