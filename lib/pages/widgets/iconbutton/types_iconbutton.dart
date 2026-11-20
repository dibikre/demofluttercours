import 'package:flutter/material.dart';
import '../section_card.dart';
import 'variante_iconbutton.dart';

// Les 4 types d'IconButton, actifs et désactivés
class TypesIconButton extends StatelessWidget {
  const TypesIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Les 4 types',
      child: GrilleVariantes(
        boutons: (i, variante) => [
          variante.construire(icon: Icon(Icons.filter_drama), onPressed: () {}),
          variante.construire(icon: Icon(Icons.filter_drama), onPressed: null),
        ],
      ),
    );
  }
}