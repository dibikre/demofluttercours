import 'package:flutter/material.dart';
import '../section_card.dart';

// Exemples de ListTile : simple, avec icônes, sur 3 lignes et sélectionné
class ListTileCards extends StatefulWidget {
  const ListTileCards({super.key});

  @override
  State<ListTileCards> createState() => _ListTileCardsState();
}

class _ListTileCardsState extends State<ListTileCards> {
  int _selection = 0;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'ListTile',
      description: 'Composant standard d\'une ligne : leading, title, subtitle et trailing.',
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.flutter_dash, color: Colors.white),
            ),
            title: Text('ListTile complet'),
            subtitle: Text('Avec leading, subtitle et trailing'),
            trailing: Icon(Icons.chevron_right),
            selected: _selection == 0,
            selectedTileColor: Colors.green.shade50,
            onTap: () => setState(() => _selection = 0),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue),
            title: Text('ListTile sur 3 lignes (isThreeLine)'),
            subtitle: Text(
              'Permet d\'afficher une description un peu plus longue sur deux lignes.',
            ),
            isThreeLine: true,
            trailing: Icon(Icons.bookmark_border),
            selected: _selection == 1,
            selectedTileColor: Colors.green.shade50,
            onTap: () => setState(() => _selection = 1),
          ),
        ],
      ),
    );
  }
}
