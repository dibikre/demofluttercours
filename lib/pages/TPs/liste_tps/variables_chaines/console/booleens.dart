// ignore_for_file: avoid_print
import 'dart:io';

String lire(String invite) {
  stdout.write(invite);
  return stdin.readLineSync() ?? '';
}

void exemple() {
  print('--- Booléens ---');
  var vrai = true;
  bool faux = false;
  print('vrai = $vrai, faux = $faux');

  print('--- Opérateurs logiques ---');
  print('vrai && faux = ${vrai && faux}');
  print('vrai || faux = ${vrai || faux}');
  print('!vrai        = ${!vrai}');

  print('--- Comparaisons (5 et 3) ---');
  print('5 == 3 : ${5 == 3}');
  print('5 != 3 : ${5 != 3}');
  print('5 > 3  : ${5 > 3}');
  print('5 <= 3 : ${5 <= 3}');

  print('--- Test de type ---');
  Object valeur = 'Dart';
  print('"Dart" is String : ${valeur is String}');
  print('"Dart" is int    : ${valeur is int}');
  print('"Dart" is! int   : ${valeur is! int}');
}

void avecSaisie() {
  num? n = num.tryParse(lire('Tape un nombre : '));
  if (n == null) {
    print('Erreur : ce n\'est pas un nombre');
    return;
  }
  print('$n > 10  : ${n > 10}');
  print('$n == 10 : ${n == 10}');
  print('$n est pair : ${n is int ? n % 2 == 0 : 'non applicable'}');
  print('$n entre 0 et 100 : ${n >= 0 && n <= 100}');

  // Opérateur ternaire : expr1 ? expr2 : expr3
  print(n >= 18 ? 'Ternaire : majeur (>= 18)' : 'Ternaire : mineur (< 18)');

  // if ... else
  if (n > 0) {
    print('if/else : positif');
  } else if (n < 0) {
    print('if/else : négatif');
  } else {
    print('if/else : zéro');
  }
}

void main() {
  while (true) {
    print('\n=== Booléens ===');
    print('1. Exécuter l\'exemple');
    print('2. Tester avec mon nombre');
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