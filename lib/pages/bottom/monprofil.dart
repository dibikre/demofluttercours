import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../menu.bottom.dart';

class MonProfil extends StatelessWidget {
  const MonProfil({super.key});

  // À remplacer par tes vraies informations
  final String nomComplet = 'DIBI Kre Michael';
  final String filiere = 'SDDI4';
  final String classe = 'SDDI4 G2';
  final String github = 'https://github.com/ton-pseudo';

  // Une ligne d'information : icône, titre et valeur
  Widget _info(
    IconData icone,
    String titre,
    String valeur, {
    VoidCallback? onTap,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icone, color: Colors.green, size: 35),
        title: Text(titre, style: TextStyle(fontSize: 16, color: Colors.grey)),
        subtitle: Text(
          valeur,
          style: TextStyle(fontSize: 22, color: Colors.blue),
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mon profil',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey.shade300,
                  backgroundImage: AssetImage('assets/images/photo.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  nomComplet,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
                SizedBox(height: 25),
                _info(Icons.school, 'Filière', filiere),
                _info(Icons.groups, 'Classe', classe),
                _info(
                  Icons.link,
                  'GitHub',
                  github,
                  onTap: () {
                    // Copie le lien dans le presse-papiers
                    Clipboard.setData(ClipboardData(text: github));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Lien GitHub copié')),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: MenuBottom(currentIndex: 2),
    );
  }
}