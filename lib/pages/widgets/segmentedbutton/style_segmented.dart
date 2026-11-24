import 'package:flutter/material.dart';
import '../section_card.dart';

// Personnalisation du SegmentedButton : couleurs, icône cochée et segment inactif
class StyleSegmented extends StatefulWidget {
  const StyleSegmented({super.key});

  @override
  State<StyleSegmented> createState() => _StyleSegmentedState();
}

class _StyleSegmentedState extends State<StyleSegmented> {
  String _mode = 'clair';

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Personnalisation',
      description:
          'SegmentedButton.styleFrom permet d\'adapter les couleurs, et un '
          'ButtonSegment peut être désactivé avec enabled: false.',
      child: SegmentedButton<String>(
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: Colors.green,
          selectedForegroundColor: Colors.white,
          backgroundColor: Colors.grey.shade100,
          foregroundColor: Colors.green.shade800,
        ),
        segments: const [
          ButtonSegment<String>(
            value: 'clair',
            icon: Icon(Icons.light_mode),
            label: Text('Clair'),
          ),
          ButtonSegment<String>(
            value: 'sombre',
            icon: Icon(Icons.dark_mode),
            label: Text('Sombre'),
          ),
          ButtonSegment<String>(
            value: 'auto',
            icon: Icon(Icons.brightness_auto),
            label: Text('Auto'),
            enabled: false,
          ),
        ],
        selected: {_mode},
        onSelectionChanged: (selection) {
          setState(() => _mode = selection.first);
        },
      ),
    );
  }
}
