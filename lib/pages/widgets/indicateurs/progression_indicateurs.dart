import 'package:flutter/material.dart';
import '../section_card.dart';

// LinearProgressIndicator et CircularProgressIndicator (déterminés et indéterminés)
class ProgressionIndicateurs extends StatefulWidget {
  const ProgressionIndicateurs({super.key});

  @override
  State<ProgressionIndicateurs> createState() => _ProgressionIndicateursState();
}

class _ProgressionIndicateursState extends State<ProgressionIndicateurs> {
  double _valeur = 0.65;

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Indicateurs de progression',
      description:
          'Avec value (0.0 à 1.0), la barre est déterminée. '
          'Avec value: null, l\'animation tourne en continu.',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Progression déterminée (${(_valeur * 100).round()} %)'),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: _valeur,
            minHeight: 8,
            borderRadius: BorderRadius.circular(4),
            color: Colors.green,
            backgroundColor: Colors.green.shade100,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              CircularProgressIndicator(
                value: _valeur,
                color: Colors.green,
                backgroundColor: Colors.green.shade100,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Slider(
                  value: _valeur,
                  activeColor: Colors.green,
                  onChanged: (v) => setState(() => _valeur = v),
                ),
              ),
            ],
          ),
          Divider(height: 28),
          Text('Progression indéterminée (value: null)'),
          SizedBox(height: 12),
          LinearProgressIndicator(color: Colors.blue),
          SizedBox(height: 16),
          Center(child: CircularProgressIndicator(color: Colors.blue)),
        ],
      ),
    );
  }
}
