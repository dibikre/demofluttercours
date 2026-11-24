import 'package:flutter/material.dart';
import '../section_card.dart';

// Les 4 types de Chip Material 3 : Action, Filter, Choice et Input
class TypesChips extends StatefulWidget {
  const TypesChips({super.key});

  @override
  State<TypesChips> createState() => _TypesChipsState();
}

class _TypesChipsState extends State<TypesChips> {
  final Set<String> _filtres = {'Flutter'};
  String _niveau = 'Débutant';
  final List<String> _tagsInitiaux = ['Dart', 'UI', 'Mobile'];
  late List<String> _tags = List.of(_tagsInitiaux);

  void _afficherMessage(String texte) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text(texte), duration: Duration(seconds: 1)),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Les 4 variantes de Chip',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ActionChip (déclenche une action)', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ActionChip(
                avatar: Icon(Icons.share, size: 18),
                label: Text('Partager'),
                onPressed: () => _afficherMessage('Action Partager déclenchée'),
              ),
              ActionChip(
                avatar: Icon(Icons.alarm, size: 18),
                label: Text('Rappel'),
                onPressed: () => _afficherMessage('Rappel programmé'),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text('FilterChip (sélection multiple)', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final nom in ['Flutter', 'Android', 'iOS', 'Web'])
                FilterChip(
                  label: Text(nom),
                  selected: _filtres.contains(nom),
                  onSelected: (selectionne) {
                    setState(() {
                      if (selectionne) {
                        _filtres.add(nom);
                      } else {
                        _filtres.remove(nom);
                      }
                    });
                  },
                ),
            ],
          ),
          SizedBox(height: 16),
          Text('ChoiceChip (choix unique)', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final option in ['Débutant', 'Intermédiaire', 'Avancé'])
                ChoiceChip(
                  label: Text(option),
                  selected: _niveau == option,
                  onSelected: (_) => setState(() => _niveau = option),
                ),
            ],
          ),
          SizedBox(height: 16),
          Text('InputChip (étiquette supprimable)', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final tag in _tags)
                InputChip(
                  label: Text(tag),
                  onDeleted: () => setState(() => _tags.remove(tag)),
                ),
              if (_tags.length < _tagsInitiaux.length)
                ActionChip(
                  avatar: Icon(Icons.refresh, size: 18),
                  label: Text('Réinitialiser'),
                  onPressed: () => setState(() => _tags = List.of(_tagsInitiaux)),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
