import 'package:flutter/material.dart';
import 'types_iconbutton.dart';
import 'bascule_iconbutton.dart';
import 'style_iconbutton.dart';

// Page de présentation du widget IconButton
class LesIconButton extends StatelessWidget {
  const LesIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IconButton',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        // La touche retour est ajoutée automatiquement (page ouverte avec push)
        iconTheme: IconThemeData(color: Colors.green, size: 35),
        backgroundColor: Colors.amberAccent,
        // Usage le plus courant : un IconButton dans AppBar.actions
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            tooltip: 'Les IconButton se placent souvent dans AppBar.actions',
            onPressed: () {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text('Un IconButton dans AppBar.actions'),
                    duration: Duration(seconds: 2),
                  ),
                );
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Liste de quelques icones:\n',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          TypesIconButton(),
          BasculeIconButton(),
          StyleIconButton(),
        ],
      ),
    );
  }
}