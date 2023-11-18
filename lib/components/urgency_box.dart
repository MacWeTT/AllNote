import 'package:flutter/material.dart';

class UrgencyBox extends StatefulWidget {
  final List<String> urgencyList;
  const UrgencyBox({Key? key, required this.urgencyList}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.urgencyList[0],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                Text(widget.urgencyList[1],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
