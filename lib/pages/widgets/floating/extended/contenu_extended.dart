import 'package:flutter/material.dart';
import '../../section_card.dart';

// Contenu d'un FAB extended : label (obligatoire), icon (facultative), isExtended
class ContenuExtended extends StatefulWidget {
  const ContenuExtended({super.key});

  @override
  State<ContenuExtended> createState() => _ContenuExtendedState();
}

class _ContenuExtendedState extends State<ContenuExtended> {
  bool _etendu = true;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Contenu : label, icon, isExtended',
      child: Wrap(
        spacing: 24,
        runSpacing: 16,
        children: [
          ExempleLegende(
            legende: 'label seul',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {},
              label: Text('Valider'),
            ),
          ),
          ExempleLegende(
            legende: 'icon + label',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
          ExempleLegende(
            legende: 'label long',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {},
              icon: Icon(Icons.mail),
              label: Text('Nouveau message'),
            ),
          ),
          ExempleLegende(
            legende: 'isExtended (appuyez)',
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => setState(() => _etendu = !_etendu),
              isExtended: _etendu,
              icon: Icon(Icons.add),
              label: Text('Ajouter'),
            ),
          ),
        ],
      ),
    );
  }
}