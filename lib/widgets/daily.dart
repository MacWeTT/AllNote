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
        const SizedBox(height: 10),
        const Row(
          children: [
            UrgencyBox(
              urgencyList: ['Urgent', 'Important'],
            ),
            UrgencyBox(
              urgencyList: ['Not Urgent', 'Important'],
            ),
          ],
        ),
        const Row(
          children: [
            UrgencyBox(
              urgencyList: ['Urgent', 'Not Important'],
            ),
            UrgencyBox(
              urgencyList: ['Not Urgent', 'Not Important'],
            ),
          ],
        )
      ],
    );
  }
}
