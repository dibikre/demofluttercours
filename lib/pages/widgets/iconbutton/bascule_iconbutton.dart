import 'package:flutter/material.dart';
import '../section_card.dart';
import 'variante_iconbutton.dart';

// IconButton à bascule : isSelected + selectedIcon
class BasculeIconButton extends StatefulWidget {
  const BasculeIconButton({super.key});

  @override
  State<BasculeIconButton> createState() => _BasculeIconButtonState();
}

class _BasculeIconButtonState extends State<BasculeIconButton> {
  // État sélectionné de chaque type (même ordre que VarianteIconButton.values)
  final List<bool> _selection = List.filled(
    VarianteIconButton.values.length,
    false,
  );

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Bouton à bascule',
      description:
          'Si isSelected n\'est pas null, le bouton devient une bascule et '
          'affiche selectedIcon quand il est sélectionné. '
          'Si isSelected est null, c\'est un bouton normal. '
          'Appuyez sur le bouton de gauche ; celui de droite est désactivé.',
      child: GrilleVariantes(
        boutons: (i, variante) => [
          variante.construire(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            isSelected: _selection[i],
            onPressed: () => setState(() => _selection[i] = !_selection[i]),
          ),
          variante.construire(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            isSelected: _selection[i],
            onPressed: null,
          ),
        ],
      ),
    );
  }
}