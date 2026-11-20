import 'package:flutter/material.dart';
import '../../section_card.dart';

// États et effets d'un FAB extended : désactivé, tooltip, ombre, splash, survol
class EtatsExtended extends StatelessWidget {
  const EtatsExtended({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'États et effets',
      description: 'Appuyez, maintenez ou survolez (souris) les boutons.',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          ExempleLegende(
            legende: 'Désactivé (onPressed: null)',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: null,
              disabledElevation: 0,
              backgroundColor: Colors.grey.shade300,
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
          ExempleLegende(
            legende: 'tooltip (appui long)',
            child: FloatingActionButton.extended(
              heroTag: null,
              tooltip: 'Ajouter un élément',
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
          ExempleLegende(
            legende: 'Sans ombre',
            child: FloatingActionButton.extended(
              heroTag: null,
              elevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              highlightElevation: 0,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Plat'),
            ),
          ),
          ExempleLegende(
            legende: 'Forte ombre (appuyez)',
            child: FloatingActionButton.extended(
              heroTag: null,
              elevation: 12,
              highlightElevation: 20,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Relief'),
            ),
          ),
          ExempleLegende(
            legende: 'splashColor (appuyez)',
            child: FloatingActionButton.extended(
              heroTag: null,
              splashColor: Colors.red,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Splash'),
            ),
          ),
          ExempleLegende(
            legende: 'hoverColor (souris)',
            child: FloatingActionButton.extended(
              heroTag: null,
              hoverColor: Colors.orange,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Survol'),
            ),
          ),
        ],
      ),
    );
  }
}