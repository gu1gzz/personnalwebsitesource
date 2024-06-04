import 'package:flutter/material.dart';
import 'package:personnalwebsite/widgets/aboutmeresponsive.dart';
import 'package:personnalwebsite/widgets/blog.dart';
import 'package:personnalwebsite/widgets/projects.dart';
import 'package:personnalwebsite/widgets/skills.dart';

void main() {
  runApp(const TabBarmenu());
}
class TabBarmenu extends StatelessWidget {
  const TabBarmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 10,
            backgroundColor: Colors.black,
            bottom: const TabBar(
              indicatorWeight: 5,
              indicatorColor: Colors.white,   
              tabs: [
                Tab(icon: Icon(Icons.info, color: Colors.white,),text: ('About me'),),
                Tab(icon: Icon(Icons.psychology, color: Colors.white,), text: ('Skills')),
                Tab(icon: Icon(Icons.drafts, color: Colors.white,), text: ('Blog')),
                Tab(icon: Icon(Icons.construction, color: Colors.white,), text: ('Projects')),
              ],
              labelColor: Color.fromARGB(255, 255, 255, 255),
              unselectedLabelColor: Colors.white,
            ),
            //titleTextStyle: const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
            //title: const Text('Gu1gzz Website'),
          ),
          body: const TabBarView(
            children: [Aboutmeresponsive(),SkillsPageContent(),ArticlesHome(),ProjectsPageContent()
            ],
          ),
        ),
      ),
    );
  }
}