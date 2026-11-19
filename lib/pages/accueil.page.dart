import 'package:flutter/material.dart';
import 'menu.page.dart';
import 'menu.bottom.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Accueil',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        // Le hamburger est ajouté automatiquement car le Scaffold a un drawer
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      drawer: MenuPage(surAccueil: true),
      bottomNavigationBar: MenuBottom(currentIndex: 0),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenue',
                style: TextStyle(fontSize: 45, color: Colors.green),
              ),
              SizedBox(height: 20),
              Text(
                'Ouvrez le menu pour accéder à la calculatrice.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}