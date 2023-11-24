import 'package:flutter/services.dart';
import 'dart:convert';

class Note {
  bool completed = false;
  String title;
  String content;

  Note({
    required this.completed,
    required this.title,
    required this.content,
  });
}

class GetNotes {
  static Future<List<Note>> getAllNotes() async {
    String data = await rootBundle.loadString('data/notes.json');
    List<dynamic> jsonList = json.decode(data);

    List<Note> notes = jsonList
        .map((json) => Note(
              completed: json['completed'],
              title: json['title'],
              content: json['content'],
            ))
        .toList();

    return notes;
  }
}
