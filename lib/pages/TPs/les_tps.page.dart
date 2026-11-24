import 'package:flutter/material.dart';
import 'liste_tps/test_bonjour.dart';
import 'liste_tps/compteur.dart';
import 'liste_tps/variables_chaines/variables_chaines.dart';

// Page "Les TPs" : affiche la liste des TPs
class LesTPs extends StatelessWidget {
  const LesTPs({super.key});

  // Une entrée de la liste : ouvre la page du TP correspondant
  Widget _tp(BuildContext context, String titre, Widget page) {
    return ListTile(
      leading: Icon(Icons.science, color: Colors.green),
      title: Text(titre, style: TextStyle(fontSize: 20)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Les TPs'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        children: [
          _tp(context, 'TP 1 : Test Bonjour', TestBonjour()),
          _tp(context, 'TP 2 : Compteur', Compteur()),
          _tp(context, 'TP 3 : Variables et chaînes', VariablesChaines()),
          // Les prochains TPs s'ajoutent ici
        ],
      ),
    );
  }
}