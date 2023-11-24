import 'package:flutter/material.dart';
import 'package:allnote/services/get_notes.dart';

class NoteBox extends StatefulWidget {
  final Note note;

  const NoteBox({Key? key, required this.note}) : super(key: key);

  @override
  State<NoteBox> createState() => _NoteBoxState();
}

class _NoteBoxState extends State<NoteBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Checkbox(
            value: false, // Replace with the actual value from your note
            onChanged: (bool? value) {
              // Handle checkbox state change
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.note.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.note.content.length > 30
                    ? '${widget.note.content.substring(0, 30)}...'
                    : widget.note.content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
