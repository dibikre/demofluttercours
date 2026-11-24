import 'package:flutter/material.dart';
import '../section_card.dart';

// Styles de décoration d'un TextField : souligné, encadré, rempli et désactivé
class BorduresTextField extends StatelessWidget {
  const BorduresTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Styles et bordures (InputDecoration)',
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Champ souligné (défaut)',
              hintText: 'Ex : Bonjour Flutter',
              prefixIcon: Icon(Icons.edit),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'OutlineInputBorder',
              hintText: 'Nom d\'utilisateur',
              prefixIcon: Icon(Icons.person_outline, color: Colors.green),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.green, width: 2),
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Champ rempli (filled: true)',
              filled: true,
              fillColor: Colors.green.shade50,
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: 'Champ désactivé (enabled: false)',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
