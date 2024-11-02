import 'package:notes/notes.dart';

part 'note_model.g.dart';

@collection
class NoteModel {
  Id id = Isar.autoIncrement;
  late String text;
}
