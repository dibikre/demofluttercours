// ignore_for_file: avoid_print
import 'dart:io';

String lire(String invite) {
  stdout.write(invite);
  return stdin.readLineSync() ?? '';
}

void exemple() {
  print('--- Types de nombres ---');
  var num1 = 1;
  var num2 = 1.0;
  num num3 = 0xFF;
  int num4 = 0xFF;
  double num5 = 1e-10;
  print('var num1 = 1        -> ${num1.runtimeType}');
  print('var num2 = 1.0      -> ${num2.runtimeType}');
  print('num num3 = 0xFF     -> $num3 (${num3.runtimeType})');
  print('int num4 = 0xFF     -> $num4');
  print('double num5 = 1e-10 -> $num5');

  print('--- Opérateurs (a = 100, b = 7) ---');
  int a = 100;
  int b = 7;
  print('a + b  = ${a + b}');
  print('a - b  = ${a - b}');
  print('a * b  = ${a * b}');
  print('a / b  = ${a / b}');
  print('a ~/ b = ${a ~/ b}  (division entière)');
  print('a % b  = ${a % b}  (reste)');

  print('--- Incrémentation ---');
  var i = 1;
  print('i++ -> ${i++}  (puis i = $i)');
  print('++i -> ${++i}');
}

void avecSaisie() {
  num? a = num.tryParse(lire('Premier nombre : '));
  num? b = num.tryParse(lire('Deuxième nombre : '));
  if (a == null || b == null) {
    print('Erreur : il faut saisir deux nombres valides');
    return;
  }
  print('$a est de type ${a is int ? 'int' : 'double'}');
  print('$b est de type ${b is int ? 'int' : 'double'}');
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  if (b == 0) {
    print('Division entière et reste impossibles par 0');
  } else {
    print('$a ~/ $b = ${a ~/ b}');
    print('$a % $b = ${a % b}');
  }
}

void main() {
  while (true) {
    print('\n=== Nombres ===');
    print('1. Exécuter l\'exemple');
    print('2. Tester avec mes nombres');
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