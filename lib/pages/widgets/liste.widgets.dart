import 'package:flutter/material.dart';
import 'boutons/lesCommonboutons.dart';

// Un widget présenté dans la section "Les Widgets"
class WidgetItem {
  final String titre;
  final String description;
  final IconData icone;
  final Widget page;

  const WidgetItem({
    required this.titre,
    required this.description,
    required this.icone,
    required this.page,
  });
}

// Liste des widgets : pour en ajouter un, il suffit d'ajouter une entrée ici
const List<WidgetItem> listeWidgets = [
  WidgetItem(
    titre: 'Common boutons',
    description: 'Les 5 types de boutons Material 3 et leurs effets',
    icone: Icons.smart_button,
    page: LesCommonBoutons(),
  ),
];