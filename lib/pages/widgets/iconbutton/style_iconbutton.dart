import 'package:flutter/material.dart';
import '../section_card.dart';

// Personnalisation d'un IconButton : taille, couleur, marges, style, fond
class StyleIconButton extends StatelessWidget {
  const StyleIconButton({super.key});

  void _signaler(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(message), duration: Duration(seconds: 1)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Personnalisation',
      child: Wrap(
        spacing: 8,
        runSpacing: 16,
        children: [
          CelluleGrille(
            titre: 'iconSize: 48',
            child: IconButton(
              iconSize: 48,
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'color',
            child: IconButton(
              color: Colors.green,
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'padding: 24 (filled)',
            child: IconButton.filled(
              padding: EdgeInsets.all(24),
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'visualDensity: compact',
            child: IconButton.filled(
              visualDensity: VisualDensity.compact,
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'tooltip (appui long)',
            child: IconButton(
              tooltip: 'J\'aime',
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'onLongPress (appui long)',
            child: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              onLongPress: () => _signaler(context, 'Appui long détecté'),
            ),
          ),
          CelluleGrille(
            titre: 'disabledColor',
            child: IconButton(
              disabledColor: Colors.red.shade200,
              icon: Icon(Icons.favorite),
              onPressed: null,
            ),
          ),
          CelluleGrille(
            titre: 'styleFrom : fond et forme',
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          CelluleGrille(
            titre: 'Fond avec Ink',
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.android),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}