import 'package:flutter/material.dart';
import '../section_card.dart';

// Personnalisation visuelle des puces : avatar, couleur, bordure et état inactif
class StyleChips extends StatelessWidget {
  const StyleChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Personnalisation',
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('M', style: TextStyle(color: Colors.white)),
            ),
            label: Text('Avec avatar'),
          ),
          Chip(
            backgroundColor: Colors.amberAccent,
            side: BorderSide(color: Colors.green, width: 1.5),
            label: Text(
              'Couleur & bordure',
              style: TextStyle(color: Colors.green.shade900),
            ),
          ),
          Chip(
            shape: StadiumBorder(),
            avatar: Icon(Icons.verified, color: Colors.blue, size: 18),
            label: Text('Forme pilule'),
          ),
          ActionChip(
            label: Text('Désactivée'),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
