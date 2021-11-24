
import 'package:flutter/cupertino.dart';
import 'package:task/Model_page/add_data.dart';

class NotesProviders extends ChangeNotifier {

  //Notes List
  final List<Notes> _notes = <Notes>[];

  List<Notes> get getNotes{
    return _notes;
  }

  void addNotes(String title)
  {
    Notes note = new Notes(title);

    _notes.add(note);

    notifyListeners();
  }



}