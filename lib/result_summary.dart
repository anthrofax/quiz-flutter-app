import 'package:flutter/material.dart';

class ResultSummary extends StatelessWidget {
  const ResultSummary(this.summariesData, {super.key});

  final List<Map<String, Object>> summariesData;

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: summariesData.map((summary) {
        return Row(
          children: [
            Text(((summary['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(summary['question'] as String),
                Text(summary['correct_answer'] as String),
                Text(summary['user_answer'] as String)
              ],
            )
          ],
        );
      }).toList(),
    ));
  }
}