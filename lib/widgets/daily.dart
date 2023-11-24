import 'package:flutter/material.dart';
import 'package:allnote/components/urgency_box.dart';

class Daily extends StatefulWidget {
  const Daily({Key? key}) : super(key: key);

  @override
  DailyState createState() => DailyState();
}

class DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: const Text(
            "Daily Tasks",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 4),
        const Row(
          children: [
            UrgencyBox(
              urgencyList: ['Urgent', 'Important'],
              tasks: ['Workout', 'Assignment'],
            ),
            UrgencyBox(
              urgencyList: ['Not Urgent', 'Important'],
              tasks: ['Study for GATE', 'Go Gym'],
            ),
          ],
        ),
        const Row(
          children: [
            UrgencyBox(
              urgencyList: ['Urgent', 'Not Important'],
              tasks: ['Workout', 'Go Gym'],
            ),
            UrgencyBox(
              urgencyList: ['Not Urgent', 'Not Important'],
              tasks: ['Play Video Games', 'Go Gym'],
            ),
          ],
        )
      ],
    );
  }
}
