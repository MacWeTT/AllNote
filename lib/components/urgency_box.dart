import 'package:flutter/material.dart';

class UrgencyBox extends StatefulWidget {
  final List<String> urgencyList;
  final List<String> tasks;
  const UrgencyBox({Key? key, required this.urgencyList, required this.tasks})
      : super(key: key);

  @override
  UrgencyBoxState createState() => UrgencyBoxState();
}

class UrgencyBoxState extends State<UrgencyBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (String urgency in widget.urgencyList)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    urgency,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 10),
            for (String task in widget.tasks)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
