import 'package:flutter/material.dart';
import '../section_card.dart';

// Les effets possibles : étendu/réduit, désactivé, tooltip, élévation, forme
class EffetsFab extends StatefulWidget {
  const EffetsFab({super.key});

  @override
  State<EffetsFab> createState() => _EffetsFabState();
}

class _EffetsFabState extends State<EffetsFab> {
  bool _etendu = true;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Effets possibles',
      description: 'Appuyez, maintenez ou survolez les boutons pour voir les effets.',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          ExempleLegende(
            legende: 'Étendu / réduit (appuyez)',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => setState(() => _etendu = !_etendu),
              isExtended: _etendu,
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
          ExempleLegende(
            legende: 'Désactivé (onPressed: null)',
            child: FloatingActionButton(
              heroTag: null,
              onPressed: null,
              // Rien n'indique qu'un FAB est désactivé : on change la couleur
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Tooltip (appui long)',
            child: FloatingActionButton(
              heroTag: null,
              tooltip: 'Ajouter un élément',
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Sans ombre',
            child: FloatingActionButton(
              heroTag: null,
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Forte ombre (appuyez)',
            child: FloatingActionButton(
              heroTag: null,
              elevation: 12,
              highlightElevation: 20,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Forme : carré arrondi',
            child: FloatingActionButton(
              heroTag: null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Forme : biseautée',
            child: FloatingActionButton(
              heroTag: null,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Forme : cercle',
            child: FloatingActionButton(
              heroTag: null,
              shape: CircleBorder(),
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}