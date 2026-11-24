import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../menu.bottom.dart';

class MonProfil extends StatelessWidget {
  const MonProfil({super.key});

  // À remplacer par tes vraies informations
  final String nomComplet = 'DIBI Kre Michael';
  final String filiere = 'SDDI4';
  final String classe = 'SDDI4 G2';
  final String github = 'https://github.com/dibikre/demofluttercours';

  // Copie le lien GitHub et affiche une confirmation visuelle
  void _copierGithub(BuildContext context) {
    Clipboard.setData(ClipboardData(text: github));
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green.shade700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: const Row(
            children: [
              Icon(Icons.check_circle_outline, color: Colors.white, size: 20),
              SizedBox(width: 10),
              Text('Lien GitHub copié dans le presse-papiers'),
            ],
          ),
        ),
      );
  }

  // Badge pill affiché sous le nom
  Widget _badge(IconData icone, String texte, Color couleur, Color fond) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: fond,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: couleur.withAlpha(60)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, size: 16, color: couleur),
          const SizedBox(width: 6),
          Text(
            texte,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: couleur,
            ),
          ),
        ],
      ),
    );
  }

  // Titre de section discret au-dessus d'une carte
  Widget _sectionTitre(String titre) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        titre,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          color: Colors.grey.shade600,
          letterSpacing: 0.4,
        ),
      ),
    );
  }

  // Conteneur de carte blanc avec bordure douce et support du ripple Material
  Widget _carteSection({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: child,
      ),
    );
  }

  // Ligne d'information structurée avec icône encadrée
  Widget _infoTile({
    required IconData icone,
    required String titre,
    required String valeur,
    required Color accent,
    Widget? trailing,
    VoidCallback? onTap,
    bool isLink = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: accent.withAlpha(28),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icone, color: accent, size: 22),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titre.toUpperCase(),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.7,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    valeur,
                    maxLines: isLink ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: isLink ? 14 : 16,
                      fontWeight: FontWeight.w600,
                      color: isLink
                          ? Colors.blue.shade700
                          : Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),
            if (trailing != null) ...[
              const SizedBox(width: 10),
              trailing,
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: AppBar(
        title: Text(
          'Mon profil',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.green.shade800,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(color: Colors.green.shade800, size: 28),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bandeau supérieur arrondi avec avatar chevauchant
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 84,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(32),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -58,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.green.shade600,
                            width: 3,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(28),
                              blurRadius: 16,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 56,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: const AssetImage(
                            'assets/images/photo.jpg',
                          ),
                        ),
                      ),
                      Positioned(
                        right: 4,
                        bottom: 4,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2.5),
                          ),
                          child: const Icon(
                            Icons.school_rounded,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Nom complet + badges rapides
                      Text(
                        nomComplet,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.green.shade900,
                          letterSpacing: -0.3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _badge(
                            Icons.auto_stories_rounded,
                            filiere,
                            Colors.green.shade800,
                            Colors.green.shade50,
                          ),
                          _badge(
                            Icons.groups_rounded,
                            classe,
                            Colors.amber.shade900,
                            Colors.amber.shade50,
                          ),
                        ],
                      ),
                      const SizedBox(height: 26),
                      // Section Informations académiques
                      _sectionTitre('Informations académiques'),
                      _carteSection(
                        child: Column(
                          children: [
                            _infoTile(
                              icone: Icons.school_rounded,
                              titre: 'Filière',
                              valeur: filiere,
                              accent: Colors.green.shade700,
                            ),
                            Divider(
                              height: 1,
                              indent: 74,
                              endIndent: 16,
                              color: Colors.grey.shade200,
                            ),
                            _infoTile(
                              icone: Icons.groups_rounded,
                              titre: 'Classe',
                              valeur: classe,
                              accent: Colors.amber.shade800,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Section Liens
                      _sectionTitre('Projet & Code source'),
                      _carteSection(
                        child: _infoTile(
                          icone: Icons.code_rounded,
                          titre: 'Dépôt GitHub',
                          valeur: github,
                          accent: Colors.blue.shade700,
                          isLink: true,
                          onTap: () => _copierGithub(context),
                          trailing: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.copy_rounded,
                                  size: 15,
                                  color: Colors.blue.shade700,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Copier',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MenuBottom(currentIndex: 2),
    );
  }
}
