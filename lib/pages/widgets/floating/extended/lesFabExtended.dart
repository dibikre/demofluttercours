import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show ScrollDirection;
import 'contenu_extended.dart';
import 'style_extended.dart';
import 'etats_extended.dart';

// Page de présentation du constructeur FloatingActionButton.extended
class LesFabExtended extends StatefulWidget {
  const LesFabExtended({super.key});

  @override
  State<LesFabExtended> createState() => _LesFabExtendedState();
}

class _LesFabExtendedState extends State<LesFabExtended> {
  // true : bouton déployé (icône + texte), false : réduit à l'icône
  bool _etendu = true;

  // Réduit le bouton quand on défile vers le bas, le déploie vers le haut
  bool _surDefilement(UserScrollNotification notification) {
    if (notification.direction == ScrollDirection.reverse && _etendu) {
      setState(() => _etendu = false);
    } else if (notification.direction == ScrollDirection.forward && !_etendu) {
      setState(() => _etendu = true);
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // FittedBox : le titre rétrécit s'il est trop long pour l'écran
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            'FloatingActionButton.extended',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: _surDefilement,
        child: ListView(
          // Marge en bas pour que le FAB ne cache pas le dernier élément
          padding: EdgeInsets.fromLTRB(16, 16, 16, 96),
          children: [
            Text(
              'FloatingActionButton.extended crée un FAB plus large, en forme de '
              'stade, avec un label et une icône facultative. '
              'Faites défiler la page : le bouton en bas à droite se réduit '
              'vers le bas et se redéploie vers le haut.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            ContenuExtended(),
            StyleExtended(),
            EtatsExtended(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        isExtended: _etendu,
        icon: Icon(Icons.edit),
        label: Text('Écrire'),
      ),
    );
  }
}