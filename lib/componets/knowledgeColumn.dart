import 'package:flutter/material.dart';

import '../constraints.dart';

class KnowledgeColumn extends StatelessWidget {
  const KnowledgeColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text('Knowledge'),
        ),
        KnowledgeSec(text: "Flutter, Dart"),
        KnowledgeSec(text: "HTML , CSS , JS"),
        KnowledgeSec(text: "Git"),
        KnowledgeSec(text: "C, C++"),
        KnowledgeSec(text: "SQL"),
      ],
    );
  }
}

class KnowledgeSec extends StatelessWidget {
  KnowledgeSec({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          color: primaryColor,
        ),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          text,
          style: TextStyle(color: bodyTextColor),
        )
      ],
    );
  }
}
