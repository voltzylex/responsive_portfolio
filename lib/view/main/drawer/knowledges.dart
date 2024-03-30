import 'package:flutter/material.dart';
import 'package:responsive_portfolio/res/constants.dart';
import 'package:responsive_portfolio/view/main/drawer/knowledge_text.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.all(defaultPadding / 2),
          child: Text('Knowledge', style: TextStyle(color: Colors.white)),
        ),
        KnowledgeText(knowledge: "Flutter,Dart"),
        KnowledgeText(knowledge: "Android,Java/Kotlin"),
        KnowledgeText(knowledge: "Git, GitHub, GitLab"),
      ],
    );
  }
}
