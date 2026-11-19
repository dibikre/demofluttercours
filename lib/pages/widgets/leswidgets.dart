import 'package:flutter/material.dart';
import '../menu.page.dart';
import 'liste.widgets.dart';

// Page d'entrée de la section "Les Widgets" : redirige vers chaque widget
class LesWidgets extends StatelessWidget {
  const LesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Les Widgets',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        // Le hamburger est ajouté automatiquement car le Scaffold a un drawer
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      drawer: MenuPage(),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: listeWidgets.length,
        itemBuilder: (context, index) {
          final item = listeWidgets[index];
          return Card(
            child: ListTile(
              leading: Icon(item.icone, color: Colors.green, size: 35),
              title: Text(
                item.titre,
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              subtitle: Text(item.description),
              trailing: Icon(Icons.chevron_right),
              // Ouvre la page du widget (une touche retour apparaît dans la barre)
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item.page),
                );
              },
            ),
          );
        },
      ),
    );
  }
}