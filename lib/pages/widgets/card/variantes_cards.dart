import 'package:flutter/material.dart';
import '../section_card.dart';

// Les 3 variantes Material 3 de Card + carte cliquable
class VariantesCards extends StatelessWidget {
  const VariantesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Les 3 variantes de Card',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Text('Card (Elevated) : avec ombre portée'),
            ),
          ),
          SizedBox(height: 8),
          Card.filled(
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Text('Card.filled : fond teinté sans bordure'),
            ),
          ),
          SizedBox(height: 8),
          Card.outlined(
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Text('Card.outlined : simple bordure'),
            ),
          ),
          SizedBox(height: 8),
          Card.outlined(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text('Carte cliquée'),
                      duration: Duration(seconds: 1),
                    ),
                  );
              },
              child: Padding(
                padding: EdgeInsets.all(14),
                child: Row(
                  children: [
                    Icon(Icons.touch_app, color: Colors.green),
                    SizedBox(width: 10),
                    Text('Carte interactive avec InkWell'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
