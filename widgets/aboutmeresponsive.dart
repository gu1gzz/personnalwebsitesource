import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> launch(String url, {bool isNewTab = true}) async {
  await launchUrl(
    Uri.parse(url),
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  );
}

class Aboutmeresponsive extends StatelessWidget {
  const Aboutmeresponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Aboutmeresp(),
    );
  }
}

class Aboutmeresp extends StatelessWidget {
  const Aboutmeresp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Desoutter Guillaume',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20), // Espacement entre le texte et l'image
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/profilepicture.jpeg",
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 20), // Espacement entre l'image et les icônes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 8), // Espacement entre l'icône et le texte
                Text("Bordeaux", style: GoogleFonts.roboto()),
                const SizedBox(width: 16), // Espacement entre le texte et l'icône GitHub
                IconButton(
                  icon: const Icon(SimpleIcons.github, color: SimpleIconColors.github),
                  onPressed: () {
                    launch("https://github.com/gu1gzz", isNewTab: true);
                  },
                ),
                IconButton(
                  icon: const Icon(SimpleIcons.linkedin, color: SimpleIconColors.linkedin),
                  onPressed: () {
                    launch("https://www.linkedin.com/in/guillaume-desoutter/", isNewTab: true);
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), // Espacement entre les icônes et le paragraphe
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Hi, my name is Guillaume. I’m currently working at Capgemini.\nYou can find my resume in the skill tab.\nActually, my projects are: learning Kubernetes (CKA), Dart, Golang and backend tools.\nMy objective is to become a full-stack engineer.',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontSize: 15),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const Aboutmeresponsive());
}