import 'package:flutter/material.dart';
import 'variantes_fab.dart';
import 'couleurs_fab.dart';
import 'effets_fab.dart';

// Page de présentation des Floating Action Buttons
class LesFloatingActionButtons extends StatefulWidget {
  const LesFloatingActionButtons({super.key});

  @override
  State<LesFloatingActionButtons> createState() =>
      _LesFloatingActionButtonsState();
}

class _LesFloatingActionButtonsState extends State<LesFloatingActionButtons> {
  // Couleur de l'icône, couleur de fond et forme du FAB de la page
  // (null = valeur par défaut du bouton)
  static const List<(Color?, Color?, ShapeBorder?)> _styles = [
    (null, null, null),
    (null, Colors.green, null),
    (Colors.white, Colors.green, null),
    (Colors.white, Colors.green, CircleBorder()),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final style = _styles[_index];

    return Scaffold(
      appBar: AppBar(
        // FittedBox : le titre rétrécit s'il est trop long pour l'écran
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            'Floating Action Buttons',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        // Marge en bas pour que le FAB ne cache pas le dernier élément
        padding: EdgeInsets.fromLTRB(16, 16, 16, 96),
        children: [
          Text(
            'Un FAB est un bouton rond flottant au-dessus du contenu, '
            'pour l\'action principale de l\'écran. '
            'Celui en bas à droite change de couleur et de forme à chaque appui.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          VariantesFab(),
          CouleursFab(),
          EffetsFab(),
        ],
      ),
      // Le FAB à sa place habituelle : Scaffold.floatingActionButton
      floatingActionButton: FloatingActionButton(
        tooltip: 'Changer le style',
        onPressed: () {
          setState(() {
            _index = (_index + 1) % _styles.length;
          });
        },
        foregroundColor: style.$1,
        backgroundColor: style.$2,
        shape: style.$3,
        child: Icon(Icons.navigation),
      ),
    );
  }
}