import 'package:flutter/material.dart';
import '../section_card.dart';

// Saisie interactive : mot de passe masqué, compteur et validation en direct
class SaisieTextField extends StatefulWidget {
  const SaisieTextField({super.key});

  @override
  State<SaisieTextField> createState() => _SaisieTextFieldState();
}

class _SaisieTextFieldState extends State<SaisieTextField> {
  final TextEditingController _emailController = TextEditingController();
  bool _masquerMotDePasse = true;
  String _apercu = '';

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  String? get _erreurEmail {
    final texte = _emailController.text.trim();
    if (texte.isEmpty) return null;
    if (!texte.contains('@') || !texte.contains('.')) {
      return 'Veuillez saisir une adresse e-mail valide';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      titre: 'Options interactives',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            obscureText: _masquerMotDePasse,
            decoration: InputDecoration(
              labelText: 'Mot de passe (obscureText)',
              prefixIcon: Icon(Icons.lock_outline),
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  _masquerMotDePasse
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() => _masquerMotDePasse = !_masquerMotDePasse);
                },
              ),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            onChanged: (_) => setState(() {}),
            decoration: InputDecoration(
              labelText: 'E-mail avec validation',
              hintText: 'nom@exemple.com',
              prefixIcon: Icon(Icons.email_outlined),
              errorText: _erreurEmail,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            maxLength: 30,
            onChanged: (valeur) => setState(() => _apercu = valeur),
            decoration: InputDecoration(
              labelText: 'Message court (maxLength: 30)',
              helperText: 'Saisie en direct : ${_apercu.isEmpty ? '...' : _apercu}',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
