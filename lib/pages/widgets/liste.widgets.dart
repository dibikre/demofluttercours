import 'package:flutter/material.dart';
import 'boutons/lesCommonboutons.dart';
import 'floating/lesFloatingActionButtons.dart';
import 'floating/extended/lesFabExtended.dart';
import 'iconbutton/lesIconButton.dart';
import 'segmentedbutton/lesSegmentedButton.dart';
import 'chip/lesChips.dart';
import 'controles/lesControles.dart';
import 'textfield/lesTextField.dart';
import 'indicateurs/lesIndicateurs.dart';
import 'card/lesCards.dart';

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
  WidgetItem(
    titre: 'SegmentedButton',
    description: 'Sélection unique, multiple et personnalisation des segments',
    icone: Icons.view_week,
    page: LesSegmentedButton(),
  ),
  WidgetItem(
    titre: 'Chip',
    description: 'ActionChip, FilterChip, ChoiceChip, InputChip et styles',
    icone: Icons.label,
    page: LesChips(),
  ),
  WidgetItem(
    titre: 'Switch & Checkbox',
    description: 'Interrupteurs, cases à cocher classiques et tristate',
    icone: Icons.toggle_on,
    page: LesControles(),
  ),
  WidgetItem(
    titre: 'TextField',
    description: 'Champs de saisie, bordures, mot de passe et validation',
    icone: Icons.text_fields,
    page: LesTextField(),
  ),
  WidgetItem(
    titre: 'Slider & Progression',
    description: 'Curseurs continu/discret, RangeSlider et barres de progression',
    icone: Icons.tune,
    page: LesIndicateurs(),
  ),
  WidgetItem(
    titre: 'Card & ListTile',
    description: 'Les 3 variantes de Card, carte cliquable et ListTile',
    icone: Icons.credit_card,
    page: LesCards(),
  ),
];