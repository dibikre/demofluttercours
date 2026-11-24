import 'package:flutter/material.dart';

import 'calculs.page.dart';
import 'widgets/leswidgets.dart';
import 'TPs/les_tps.page.dart';

// Menu latéral gauche (Drawer)
class MenuPage extends StatelessWidget {
  // true quand le menu est affiché depuis la page Accueil
  final bool surAccueil;

  const MenuPage({super.key, this.surAccueil = false});

  // Une entrée du menu : ferme le menu puis ouvre la page demandée
  Widget _item(
    BuildContext context,
    IconData icone,
    String titre,
    Widget page,
  ) {
    return ListTile(
      leading: Icon(icone, color: Colors.green),
      title: Text(titre, style: TextStyle(fontSize: 20)),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.amberAccent),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
            ),
          ),
          _item(context, Icons.calculate, 'Calculatrice', Calculs()),
          _item(context, Icons.widgets, 'Les Widgets', LesWidgets()),
          _item(context, Icons.school, 'Les TPs', LesTPs()),
          // Le bouton Accueil n'apparaît que si on n'est pas déjà sur l'accueil
          if (!surAccueil)
            ListTile(
              leading: Icon(Icons.home, color: Colors.green),
              title: Text('Accueil', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Ferme le menu puis revient à la première page (Accueil)
                Navigator.pop(context);
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
        ],
      ),
    );
  }
}
