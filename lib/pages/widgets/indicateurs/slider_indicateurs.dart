import 'package:flutter/material.dart';
import '../section_card.dart';

// Exemples de Slider continu, discret (divisions) et RangeSlider
class SliderIndicateurs extends StatefulWidget {
  const SliderIndicateurs({super.key});

  @override
  State<SliderIndicateurs> createState() => _SliderIndicateursState();
}

class _SliderIndicateursState extends State<SliderIndicateurs> {
  double _continu = 40;
  double _discret = 60;
  RangeValues _plage = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Slider et RangeSlider',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Continu : ${_continu.round()} %'),
          Slider(
            value: _continu,
            min: 0,
            max: 100,
            activeColor: Colors.green,
            onChanged: (valeur) => setState(() => _continu = valeur),
          ),
          SizedBox(height: 8),
          Text('Discret (divisions: 5) : ${_discret.round()}'),
          Slider(
            value: _discret,
            min: 0,
            max: 100,
            divisions: 5,
            label: '${_discret.round()}',
            activeColor: Colors.blue,
            onChanged: (valeur) => setState(() => _discret = valeur),
          ),
          SizedBox(height: 8),
          Text('Plage (RangeSlider) : ${_plage.start.round()} – ${_plage.end.round()}'),
          RangeSlider(
            values: _plage,
            min: 0,
            max: 100,
            divisions: 10,
            labels: RangeLabels(
              '${_plage.start.round()}',
              '${_plage.end.round()}',
            ),
            activeColor: Colors.amber.shade800,
            onChanged: (valeurs) => setState(() => _plage = valeurs),
          ),
        ],
      ),
    );
  }
}
