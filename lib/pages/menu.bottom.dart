import 'package:flutter/material.dart';
import 'bottom/liste.chapitre.dart';
import 'bottom/monprofil.dart';

// Menu du bas : 0 = Accueil, 1 = Liste des cours, 2 = Mon profil
class MenuBottom extends StatelessWidget {
  // Index de la page actuellement affichée
  final int currentIndex;

  const MenuBottom({super.key, required this.currentIndex});

  void _onTap(BuildContext context, int index) {
    // Déjà sur cette page : rien à faire
    if (index == currentIndex) return;

    if (index == 0) {
      // Revient à l'accueil (première page de l'application)
      Navigator.popUntil(context, (route) => route.isFirst);
      return;
    }

    final Widget page = index == 1 ? ListeChapitre() : MonProfil();

    // Ouvre la page en la plaçant juste au-dessus de l'accueil
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => page),
      (route) => route.isFirst,
    );
  }

  // Photo ronde utilisée comme icône (avec un anneau vert si sélectionnée)
  Widget _photo(bool actif) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: actif ? Colors.green : Colors.transparent,
          width: 2,
        ),
      ),
      child: CircleAvatar(
        radius: 11,
        backgroundColor: Colors.grey.shade300,
        backgroundImage: AssetImage('assets/images/photo.jpg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _onTap(context, index),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.amberAccent,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black54,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Cours'),
        BottomNavigationBarItem(
          icon: _photo(false),
          activeIcon: _photo(true),
          label: 'Profil',
        ),
      ],
    );
  }
}