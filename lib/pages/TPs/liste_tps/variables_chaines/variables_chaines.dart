import 'package:flutter/material.dart';
import 'onglet_executer.dart';

// TP 3 : Variables et chaînes (Chapitre 4 : Langage Dart)
// Chaque onglet indique le fichier console à exécuter
class VariablesChaines extends StatelessWidget {
  const VariablesChaines({super.key});

  static const String _dossier =
      'lib/pages/TPs/liste_tps/variables_chaines/console';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('TP 3 : Variables et chaînes'),
          backgroundColor: Colors.amberAccent,
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: [
              Tab(icon: Icon(Icons.text_fields), text: 'Chaînes'),
              Tab(icon: Icon(Icons.pin), text: 'Nombres'),
              Tab(icon: Icon(Icons.toggle_on), text: 'Booléens'),
              Tab(icon: Icon(Icons.list), text: 'Listes/Maps'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngletExecuter(
              titre: 'Chaînes de caractères',
              description: 'Concaténation et interpolation (\$variable, \${expression}).',
              fichier: '$_dossier/chaines.dart',
            ),
            OngletExecuter(
              titre: 'Nombres',
              description: 'Types num, int, double et opérateurs arithmétiques.',
              fichier: '$_dossier/nombres.dart',
            ),
            OngletExecuter(
              titre: 'Booléens',
              description: 'bool, comparaisons, opérateurs logiques, is, ternaire, if/else.',
              fichier: '$_dossier/booleens.dart',
            ),
            OngletExecuter(
              titre: 'Listes et Maps',
              description: 'List, Map, boucles for et for in.',
              fichier: '$_dossier/collections.dart',
            ),
          ],
        ),
      ),
    );
  }
}