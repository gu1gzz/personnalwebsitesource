import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProjectsPageContent(),
    );
  }
}

class ProjectsPageContent extends StatelessWidget {
  const ProjectsPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Currently Working')
        ),
    );
  }
}
