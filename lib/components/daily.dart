import 'package:flutter/material.dart';

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
        const Text(
          "Daily Tasks",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text("Urgent"),
                      Text("Important")
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text("Not Urgent"),
                      Text("Important")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text("Urgent"),
                      Text("Unimportant")
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Column(
                children: <Widget>[
                  Row(
                    children: [
                      Text("Not Urgent"),
                      Text("Unimportant")
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
