import 'package:flutter/material.dart';
import 'calculs.page.dart';

// Menu latéral gauche (Drawer)
class MenuPage extends StatelessWidget {
  // true quand le menu est affiché depuis la page Accueil
  final bool surAccueil;

  const MenuPage({super.key, this.surAccueil = false});

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
          ListTile(
            leading: Icon(Icons.calculate, color: Colors.green),
            title: Text('Calculatrice', style: TextStyle(fontSize: 20)),
            onTap: () {
              // Ferme le menu puis ouvre la calculatrice
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calculs()),
              );
            },
          ),
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