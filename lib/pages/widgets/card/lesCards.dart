import 'package:flutter/material.dart';
import 'variantes_cards.dart';
import 'listtile_cards.dart';

// Page de présentation des widgets Card et ListTile
class LesCards extends StatelessWidget {
  const LesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card & ListTile',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Card regroupe des informations liées dans un bloc visuel, '
            'souvent associé à ListTile pour structurer une ligne.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          VariantesCards(),
          ListTileCards(),
        ],
      ),
    );
  }
}
