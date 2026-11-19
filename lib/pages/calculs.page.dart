import 'package:flutter/material.dart';

class Calculs extends StatefulWidget {
  const Calculs({super.key});

  @override
  State<Calculs> createState() => _CalculsState();
}

class _CalculsState extends State<Calculs> {
  int _nombre1 = 0;
  int _nombre2 = 0;
  String _resultat = '';

  double calculer(String operation) {
    if (operation == '+') return (_nombre1 + _nombre2).toDouble();
    if (operation == '-') return (_nombre1 - _nombre2).toDouble();
    if (operation == '*') return (_nombre1 * _nombre2).toDouble();
    if (operation == '/') {
    if (_nombre2 == 0) {
        throw Exception("Division par zéro impossible");
      }
      return _nombre1 / _nombre2;
    }

    throw Exception("Opération inconnue");
  }

  void afficher(String operation) {
    String texte;
    try {
      double res = calculer(operation);
      texte = res == res.truncateToDouble()
          ? res.toInt().toString()
          : res.toString();
    } catch (e) {
      texte = e.toString().replaceFirst('Exception: ', '');
    }
    setState(() {
      _resultat = texte;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculs',
          style: TextStyle(fontSize: 45, color: Colors.green),
        ),
        leading: Icon(Icons.calculate, size: 45, color: Colors.green),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(35),
          child: Column(
            children: [
              TextField(
                onChanged: (valeur) => _nombre1 = int.tryParse(valeur) ?? 0,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Taper un nombre',
                ),
                style: TextStyle(fontSize: 30, color: Colors.blue),
                maxLength: 15,
              ),
              SizedBox(height: 35),
              TextField(
                onChanged: (valeur) => _nombre2 = int.tryParse(valeur) ?? 0,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Taper un nombre',
                ),
                style: TextStyle(fontSize: 30, color: Colors.blue),
                maxLength: 15,
              ),
              SizedBox(height: 35),
              Row(
                children: [
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => afficher('+'),
                    child: Text('+', style: TextStyle(fontSize: 30)),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => afficher('/'),
                    child: Text('/', style: TextStyle(fontSize: 30)),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => afficher('*'),
                    child: Text('*', style: TextStyle(fontSize: 30)),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () => afficher('-'),
                    child: Text('-', style: TextStyle(fontSize: 30)),
                  ),
                  SizedBox(width: 15),
                ],
              ),
              SizedBox(height: 35),
              Text(
                _resultat,
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}