import 'package:flutter/material.dart';
import 'boutons/lesCommonboutons.dart';
import 'floating/lesFloatingActionButtons.dart';
import 'floating/extended/lesFabExtended.dart';
import 'iconbutton/lesIconButton.dart';

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
  WidgetItem(
    titre: 'Les Floating Action Buttons',
    description: 'Les 4 variantes du FAB, ses couleurs et ses effets',
    icone: Icons.add_circle,
    page: LesFloatingActionButtons(),
  ),
  WidgetItem(
    titre: 'FloatingActionButton.extended',
    description: 'Le constructeur extended : label, icône, style et réduction',
    icone: Icons.edit_note,
    page: LesFabExtended(),
  ),
  WidgetItem(
    titre: 'IconButton',
    description: 'Les 4 types, le bouton à bascule et la personnalisation',
    icone: Icons.touch_app,
    page: LesIconButton(),
  ),
];