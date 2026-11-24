// ignore_for_file: avoid_print
import 'dart:io';

String lire(String invite) {
  stdout.write(invite);
  return stdin.readLineSync() ?? '';
}

// Données manipulées par le mode interactif
final List<String> maListe = [];
final Map<String, String> maMap = {};

void exemple() {
  print('--- Liste + boucle for ---');
  List<int> liste = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int somme = 0;
  for (int i = 0; i < liste.length; i++) {
    somme += liste[i];
  }
  print('for    : somme = $somme');

  print('--- Boucle for in ---');
  int somme2 = 0;
  for (int element in liste) {
    somme2 += element;
  }
  print('for in : somme = $somme2');

  print('--- if ... else dans une boucle ---');
  List<int> paires = [];
  List<int> impaires = [];
  for (int e in liste) {
    if (e % 2 == 0) {
      paires.add(e);
    } else {
      impaires.add(e);
    }
  }
  print('paires   : $paires');
  print('impaires : $impaires');

  print('--- Liste dynamique ---');
  var dynamique = <dynamic>[1, true, 'String', 5.6e6];
  dynamique.add('ajout');
  print('$dynamique (taille ${dynamique.length})');

  print('--- Liste de listes ---');
  List<List<int>> multi = [
    [10, 20, 30],
    [40, 50, 60],
  ];
  print('multi[0][1] = ${multi[0][1]}, multi[1][2] = ${multi[1][2]}');

  print('--- Map ---');
  Map<String, int> m = {'un': 1, 'deux': 2};
  m['trois'] = 3;
  print('$m');
  print("m['un'] = ${m['un']}");
}

void interactif() {
  print('\nCommandes :');
  print('  + valeur    ajoute à la liste');
  print('  - valeur    retire de la liste');
  print('  somme       somme des nombres de la liste');
  print('  cle:valeur  ajoute à la map');
  print('  ? cle       lit une clé de la map');
  print('  vider       vide la liste et la map');
  print('  retour      revient au menu');

  while (true) {
    String texte = lire('> ');
    if (texte == 'retour') {
      break;
    } else if (texte.startsWith('+ ')) {
      maListe.add(texte.substring(2).trim());
      print('Liste : $maListe');
    } else if (texte.startsWith('- ')) {
      bool ok = maListe.remove(texte.substring(2).trim());
      print(ok ? 'Liste : $maListe' : 'Valeur introuvable');
    } else if (texte == 'somme') {
      double somme = 0;
      for (String element in maListe) {
        somme += double.tryParse(element) ?? 0;
      }
      print('Somme = $somme');
    } else if (texte.startsWith('? ')) {
      String cle = texte.substring(2).trim();
      print('maMap[$cle] = ${maMap[cle]}');
    } else if (texte.contains(':')) {
      List<String> morceaux = texte.split(':');
      maMap[morceaux[0].trim()] = morceaux[1].trim();
      print('Map : $maMap');
    } else if (texte == 'vider') {
      maListe.clear();
      maMap.clear();
      print('Liste et map vidées');
    } else {
      print('Commande inconnue');
    }
  }
}

void main() {
  while (true) {
    print('\n=== Listes, Maps et boucles ===');
    print('1. Exécuter l\'exemple');
    print('2. Mode interactif (liste et map)');
    print('0. Quitter');
    String choix = lire('Choix : ');
    if (choix == '1') {
      exemple();
    } else if (choix == '2') {
      interactif();
    } else if (choix == '0') {
      print('Au revoir !');
      break;
    } else {
      print('Choix invalide');
    }
  }
}