import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launch(String url, {bool isNewTab = true}) async {
  await launchUrl(
    Uri.parse(url),
    webOnlyWindowName: isNewTab ? '_blank' : '_self',
  );
}

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SkillsPageContent(),
    );
  }
}

class SkillsPageContent extends StatelessWidget {
  const SkillsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(SimpleIcons.readdotcv, size: 50),
                onPressed: () {
                  launch('https://drive.google.com/file/d/16RAqqr0gXbF__MyxgL15ou3y4OzRyX2c/view?usp=sharing', isNewTab: true);
                },
              ),
              const Text(
                'Download my Resume',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                softWrap: true,
              ),
              const SizedBox(height: 50),
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 30,
                runSpacing: 30,
                children: [
                  SkillIcon(
                    icon: SimpleIcons.flutter,
                    color: SimpleIconColors.flutter,
                    label: 'Flutter',
                    url: 'https://flutter.dev',
                  ),
                  SkillIcon(
                    icon: SimpleIcons.docker,
                    color: SimpleIconColors.docker,
                    label: 'Docker',
                    url: 'https://www.docker.com',
                  ),
                  SkillIcon(
                    icon: SimpleIcons.kubernetes,
                    color: SimpleIconColors.kubernetes,
                    label: 'Kubernetes',
                    url: 'https://kubernetes.io',
                  ),
                  SkillIcon(
                    icon: SimpleIcons.redhat,
                    color: SimpleIconColors.redhat,
                    label: 'RedHat',
                    url: 'https://www.redhat.com/fr',
                  ),
                  SkillIcon(
                    icon: SimpleIcons.ubuntu,
                    color: SimpleIconColors.ubuntu,
                    label: 'Ubuntu',
                    url: 'https://ubuntu.com',
                  ),
                  SkillIcon(
                    icon: SimpleIcons.go,
                    color: SimpleIconColors.go,
                    label: 'Golang',
                    url: 'https://go.dev',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  final String url;

  const SkillIcon({
    required this.icon,
    required this.color,
    required this.label,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: color, size: 50),
          onPressed: () {
            launch(url, isNewTab: true);
          },
        ),
        Text(
          label,
          style: TextStyle(fontSize: 30, color: color),
          softWrap: true,
        ),
      ],
    );
  }
}

void main() {
  runApp(const SkillsPage());
}