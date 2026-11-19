import 'package:flutter/material.dart';

// Exemples de personnalisation des boutons avec styleFrom et ButtonStyle
class PersonnalisationBoutons extends StatelessWidget {
  const PersonnalisationBoutons({super.key});

  // Un exemple : légende grise puis le bouton
  Widget _exemple(String legende, Widget bouton) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(legende, style: TextStyle(fontSize: 14, color: Colors.grey)),
        SizedBox(height: 6),
        bouton,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personnalisation (ButtonStyle)',
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 20,
              runSpacing: 16,
              children: [
                _exemple(
                  'styleFrom : couleurs',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text('Vert'),
                  ),
                ),
                _exemple(
                  'styleFrom : forme et élévation',
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      elevation: 10,
                    ),
                    onPressed: () {},
                    child: Text('Arrondi'),
                  ),
                ),
                _exemple(
                  'styleFrom : bordure',
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.green,
                      side: BorderSide(color: Colors.green, width: 3),
                    ),
                    onPressed: () {},
                    child: Text('Bord vert'),
                  ),
                ),
                _exemple(
                  'styleFrom : texte coloré',
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.green),
                    onPressed: () {},
                    child: Text('Texte vert'),
                  ),
                ),
                _exemple(
                  'styleFrom : taille imposée',
                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(200, 60),
                      textStyle: TextStyle(fontSize: 22),
                    ),
                    onPressed: () {},
                    child: Text('Grand'),
                  ),
                ),
                _exemple(
                  'Même couleur pour tous les états',
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Colors.green,
                      ),
                      foregroundColor: WidgetStatePropertyAll<Color>(
                        Colors.white,
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Toujours vert'),
                  ),
                ),
                _exemple(
                  'Couleur selon l\'état (maintenez appuyé)',
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                        (Set<WidgetState> etats) {
                          if (etats.contains(WidgetState.pressed)) {
                            return Colors.green.withValues(alpha: 0.5);
                          }
                          // null = couleur par défaut du bouton
                          return null;
                        },
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Appuyez-moi'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}