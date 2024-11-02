import 'package:notes/notes.dart';

class NoteDatabase extends ChangeNotifier{
  static late Isar isar;

  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [NoteModelSchema],
      directory: dir.path,
    );
  }

  final List<NoteModel> currentNotes = [];

  Future<void> addNote(String textFromUser) async {
    final newNote = NoteModel()..text = textFromUser;

    await isar.writeTxn(() => isar.noteModels.put(newNote));

    fetchNotes();
  }

  Future<void> fetchNotes() async {
    List<NoteModel> fetchedNotes = await isar.noteModels.where().findAll();
    currentNotes.clear();
    currentNotes.addAll(fetchedNotes);
    notifyListeners();
  }

  Future<void> updateNote(int id, String newText) async {
    final existingNote = await isar.noteModels.get(id);
    if (existingNote != null) {
      existingNote.text = newText;
      await isar.writeTxn(() => isar.noteModels.put(existingNote));
      await fetchNotes();
    }
  }

  Future<void> deleteNote(int id) async {
    await isar.writeTxn(() => isar.noteModels.delete(id));
    await fetchNotes();
  }
}
