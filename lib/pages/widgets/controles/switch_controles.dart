import 'package:flutter/material.dart';
import '../section_card.dart';

// Exemples de Switch : standard, avec icône, désactivé et SwitchListTile
class SwitchControles extends StatefulWidget {
  const SwitchControles({super.key});

  @override
  State<SwitchControles> createState() => _SwitchControlesState();
}

class _SwitchControlesState extends State<SwitchControles> {
  bool _actif = true;
  bool _avecIcone = false;
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Switch',
      description: 'Interrupteur binaire (activé / désactivé).',
      child: Column(
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 12,
            children: [
              ExempleLegende(
                legende: 'Standard',
                child: Switch(
                  value: _actif,
                  onChanged: (valeur) => setState(() => _actif = valeur),
                ),
              ),
              ExempleLegende(
                legende: 'Avec thumbIcon',
                child: Switch(
                  value: _avecIcone,
                  activeThumbColor: Colors.green,
                  thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                    if (states.contains(WidgetState.selected)) {
                      return Icon(Icons.check, color: Colors.white);
                    }
                    return Icon(Icons.close);
                  }),
                  onChanged: (valeur) => setState(() => _avecIcone = valeur),
                ),
              ),
              ExempleLegende(
                legende: 'Désactivé',
                child: Switch(value: true, onChanged: null),
              ),
            ],
          ),
          Divider(height: 24),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            secondary: Icon(Icons.notifications_active, color: Colors.green),
            title: Text('Notifications de cours'),
            subtitle: Text(_notifications ? 'Activées' : 'Désactivées'),
            activeThumbColor: Colors.green,
            value: _notifications,
            onChanged: (valeur) => setState(() => _notifications = valeur),
          ),
        ],
      ),
    );
  }
}
