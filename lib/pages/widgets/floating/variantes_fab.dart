import 'package:flutter/material.dart';
import '../section_card.dart';

// Les 4 variantes de FloatingActionButton
// heroTag: null évite le conflit entre plusieurs FAB affichés sur la même page
class VariantesFab extends StatelessWidget {
  const VariantesFab({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Les 4 variantes',
      description: 'En pratique, un seul FAB par écran, pour l\'action principale.',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          ExempleLegende(
            legende: 'Small',
            child: FloatingActionButton.small(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Regular',
            child: FloatingActionButton(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Large',
            child: FloatingActionButton.large(
              heroTag: null,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
          ExempleLegende(
            legende: 'Extended',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
        ],
      ),
    );
  }
}