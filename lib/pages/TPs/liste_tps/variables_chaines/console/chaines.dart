// ignore_for_file: avoid_print
import 'dart:io';

// Lit une ligne au clavier après avoir affiché une invite
String lire(String invite) {
  stdout.write(invite);
  return stdin.readLineSync() ?? '';
}

void exemple() {
  print('--- Concaténation ---');
  print('Ceci ' + 'est ' + 'une ' + 'concaténation');
  print('Ceci ' 'est ' 'une ' 'autre manière');

  print('--- Interpolation ---');
  String nom = 'Dart';
  var version = 2;
  print('Le langage $nom, version $version');
  print('Longueur de nom : ${nom.length}');
  print('Majuscules : ${nom.toUpperCase()}');
}

void avecSaisie() {
  String texte = lire('Tape un texte : ');
  print('Concaténation : ' + 'Bonjour ' + texte + ' !');
  print('Interpolation : Bonjour $texte, $texte a ${texte.length} caractères');
  print('Majuscules : ${texte.toUpperCase()}');
  print('Minuscules : ${texte.toLowerCase()}');
  print('Inversé : ${texte.split('').reversed.join()}');
}

void main() {
  while (true) {
    print('\n=== Chaînes de caractères ===');
    print('1. Exécuter l\'exemple');
    print('2. Tester avec mon texte');
    print('0. Quitter');
    String choix = lire('Choix : ');
    if (choix == '1') {
      exemple();
    } else if (choix == '2') {
      avecSaisie();
    } else if (choix == '0') {
      print('Au revoir !');
      break;
    } else {
      print('Choix invalide');
    }
  }
}