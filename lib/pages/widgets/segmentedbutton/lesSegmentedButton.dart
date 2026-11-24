import 'package:flutter/material.dart';
import 'selection_segmented.dart';
import 'style_segmented.dart';

// Page de présentation du widget SegmentedButton
class LesSegmentedButton extends StatelessWidget {
  const LesSegmentedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            'SegmentedButton',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'SegmentedButton permet de choisir une ou plusieurs options '
            'parmi un petit ensemble de segments regroupés.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          SelectionSimpleSegmented(),
          SelectionMultipleSegmented(),
          StyleSegmented(),
        ],
      ),
    );
  }
}
