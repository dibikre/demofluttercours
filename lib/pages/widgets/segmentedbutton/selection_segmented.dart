import 'package:flutter/material.dart';
import '../section_card.dart';

enum _Affichage { jour, semaine, mois }

enum _Taille { xs, s, m, l, xl }

// Sélection unique avec SegmentedButton
class SelectionSimpleSegmented extends StatefulWidget {
  const SelectionSimpleSegmented({super.key});

  @override
  State<SelectionSimpleSegmented> createState() =>
      _SelectionSimpleSegmentedState();
}

class _SelectionSimpleSegmentedState extends State<SelectionSimpleSegmented> {
  _Affichage _vue = _Affichage.semaine;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Sélection unique',
      description: 'Par défaut, un seul segment peut être actif à la fois.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SegmentedButton<_Affichage>(
            segments: const [
              ButtonSegment<_Affichage>(
                value: _Affichage.jour,
                label: Text('Jour'),
                icon: Icon(Icons.calendar_view_day),
              ),
              ButtonSegment<_Affichage>(
                value: _Affichage.semaine,
                label: Text('Semaine'),
                icon: Icon(Icons.calendar_view_week),
              ),
              ButtonSegment<_Affichage>(
                value: _Affichage.mois,
                label: Text('Mois'),
                icon: Icon(Icons.calendar_month),
              ),
            ],
            selected: {_vue},
            onSelectionChanged: (nouvelleSelection) {
              setState(() => _vue = nouvelleSelection.first);
            },
          ),
          SizedBox(height: 12),
          Text(
            'Vue sélectionnée : ${_vue.name}',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}

// Sélection multiple avec multiSelectionEnabled et emptySelectionAllowed
class SelectionMultipleSegmented extends StatefulWidget {
  const SelectionMultipleSegmented({super.key});

  @override
  State<SelectionMultipleSegmented> createState() =>
      _SelectionMultipleSegmentedState();
}

class _SelectionMultipleSegmentedState
    extends State<SelectionMultipleSegmented> {
  Set<_Taille> _tailles = {_Taille.m, _Taille.l};

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Sélection multiple',
      description:
          'Avec multiSelectionEnabled: true, l\'utilisateur peut combiner '
          'plusieurs choix (et même tout désélectionner).',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SegmentedButton<_Taille>(
            multiSelectionEnabled: true,
            emptySelectionAllowed: true,
            segments: const [
              ButtonSegment<_Taille>(value: _Taille.xs, label: Text('XS')),
              ButtonSegment<_Taille>(value: _Taille.s, label: Text('S')),
              ButtonSegment<_Taille>(value: _Taille.m, label: Text('M')),
              ButtonSegment<_Taille>(value: _Taille.l, label: Text('L')),
              ButtonSegment<_Taille>(value: _Taille.xl, label: Text('XL')),
            ],
            selected: _tailles,
            onSelectionChanged: (nouvelleSelection) {
              setState(() => _tailles = nouvelleSelection);
            },
          ),
          SizedBox(height: 12),
          Text(
            _tailles.isEmpty
                ? 'Aucune taille sélectionnée'
                : 'Tailles : ${_tailles.map((t) => t.name.toUpperCase()).join(', ')}',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }
}
