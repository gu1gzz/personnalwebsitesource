import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ArticlesHome(),
    ),
  );
}

class ArticlesHome extends StatelessWidget {
  const ArticlesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Center(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              
            ),
            onPressed: () {
              Navigator.of(context).push(_createRouteArticle2());
            },
            icon: Icon(Icons.article),
            label: Text(
              '19.06.2024: Road to CKA',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          ),
        ),
                  Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Center(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              
            ),
            onPressed: () {
              Navigator.of(context).push(_createRouteArticle1());
            },
            icon: Icon(Icons.article),
            label: Text(
              '12.05.2024: My journey to better learn',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          ),
        ),
        ],
      ),
    );
  }
}

Route _createRouteArticle1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "\n\nI was always wondering, when I'm looking at smart people, how these people learn things.Since the primary school, we are just stick to the same process: listening in class, doing our howeworks and try to pass the exam.\nNo matter the subject, no matter if you like it or not, you have to study it and try to remember a lot of information to answer the questions.\nI was studying a course on Kubernetes, and I thought about the learning process: how can I learn in a better way? Like, not just remembering the thing, but totally understanding it. Of course, you have to practice, do hand-on-lab, try, retry, fail, and succeed.\nBut maybe it's just an part of the road to learn something, I was looking for some tools or techniques on reddit and I found something interesting: LogSeq.LogSeq is hard to describe, to understand the power of this tool, you should take a look at the website: https://logseq.com. \n You can create notes, link them with blocks or pages, and visualize them with a graph. You can structure all the information and retrieve it in a simple way.\nI started using it recently, but I think with time and practice, this tool can become a game changer in my learning journey.\nTaking notes is now like making a puzzle where you can't did something wrong because all of the pieces can be linked.\nI plan to pass the CKA certification, and I will update you on my using of LogSeq by showing the notes I took.\n\n",
              softWrap: true,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(letterSpacing: .5),
                fontSize: 15,
              ),
            ),
          );
        },
      ),
    );
  }
}

Route _createRouteArticle2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "\n\n Hello,\nI'm writing this article to update my journey to the CKA certification.\nI finished the kodekloud course from Mumshad and I'm currently passing all the mock exams.\nThe beginning was difficult but with practice and effort, i manage to get some good resultats to the differents tests.\nA lot of notions need to be understand: pod, architecture, service, storage. With my background, my favorite topic is troubleshooting, i can easily find the way to debug a pod, a service or a network.\n I also begin my homelab with a proxmox server hosted on a dell Tower with 32Gb RAM. My proxmox server host a Kubernetes cluster with 3 nodes (1 control-plane, 2 worker nodes), the services which are hosted are Gitea, Bookstack, Prometheus and Grafana (for the moment). But I plan to destroy everything and recreate from sratch on video to launch my youtube channel. I was also using Terraform for the deployments on my K8S cluster.\nThe next step for me is to get the CKA, I'm working on it and I hope get it in max 2 weeks.\n",
              softWrap: true,
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(letterSpacing: .5),
                fontSize: 15,
              ),
            ),
          );
        },
      ),
    );
  }
}
