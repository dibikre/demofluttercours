import 'package:flutter/material.dart';
import '../section_card.dart';

// Exemples de Checkbox : standard, tristate, désactivé et CheckboxListTile
class CheckboxControles extends StatefulWidget {
  const CheckboxControles({super.key});

  @override
  State<CheckboxControles> createState() => _CheckboxControlesState();
}

class _CheckboxControlesState extends State<CheckboxControles> {
  bool _coche = true;
  bool? _tristate;
  bool _conditions = false;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Checkbox',
      description:
          'Case à cocher classique ou à trois états (tristate: true, null ou false).',
      child: Column(
        children: [
          Wrap(
            spacing: 24,
            runSpacing: 12,
            children: [
              ExempleLegende(
                legende: 'Standard',
                child: Checkbox(
                  value: _coche,
                  activeColor: Colors.green,
                  onChanged: (valeur) =>
                      setState(() => _coche = valeur ?? false),
                ),
              ),
              ExempleLegende(
                legende: 'Tristate (${_tristate ?? 'null'})',
                child: Checkbox(
                  tristate: true,
                  value: _tristate,
                  activeColor: Colors.blue,
                  onChanged: (valeur) => setState(() => _tristate = valeur),
                ),
              ),
              ExempleLegende(
                legende: 'Désactivée',
                child: Checkbox(value: true, onChanged: null),
              ),
            ],
          ),
          Divider(height: 24),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Colors.green,
            title: Text('J\'ai lu et compris le chapitre'),
            value: _conditions,
            onChanged: (valeur) =>
                setState(() => _conditions = valeur ?? false),
          ),
        ],
      ),
    );
  }
}
