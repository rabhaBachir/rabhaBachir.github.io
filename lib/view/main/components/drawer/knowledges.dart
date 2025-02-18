import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Vs code'),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Agile methodology'),
        KnowledgeText(knowledge: 'Trello,JIRA'),
        KnowledgeText(knowledge: 'working in a Scrum process'),
        KnowledgeText(knowledge: 'Database architecture'),
        KnowledgeText(knowledge: 'collaborate with otherteam members'),
      ],
    );
  }
}
