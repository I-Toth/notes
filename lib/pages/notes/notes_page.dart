import 'package:notes/notes.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final textController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    readNotes();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void createNote() {
    textController.clear();
    showNoteDialog(
      context: context,
      title: AppLocalizations.of(context).translate('createNoteTitle'),
      buttonText: AppLocalizations.of(context).translate('createButton'),
      textController: textController,
      onPressed: () {
        context.read<NoteDatabase>().addNote(textController.text);
      },
    );
  }

  void readNotes() => context.read<NoteDatabase>().fetchNotes();

  void updateNote(NoteModel note) {
    textController.text = note.text;
    showNoteDialog(
      context: context,
      title: AppLocalizations.of(context).translate('updateNoteTitle'),
      buttonText: AppLocalizations.of(context).translate('updateButton'),
      textController: textController,
      onPressed: () {
        context.read<NoteDatabase>().updateNote(
              note.id,
              textController.text,
            );
      },
    );
  }

  void deleteNote(int id) => context.read<NoteDatabase>().deleteNote(id);

  @override
  Widget build(BuildContext context) {
    final noteDatabase = context.watch<NoteDatabase>();

    List<NoteModel> currentNotes = noteDatabase.currentNotes;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.add,
          size: dimens24,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
      drawer: const AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: dimens24),
            child: Text(
              AppLocalizations.of(context).translate('appTitle'),
              style: GoogleFonts.dmSerifText(
                fontSize: dimens48,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(bottom: dimens120),
                itemCount: currentNotes.length,
                itemBuilder: (context, index) {
                  final note = currentNotes[index];

                  return NoteTile(
                    text: note.text,
                    onEditPressed: () => updateNote(note),
                    onDeletePressed: () => deleteNote(note.id),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
