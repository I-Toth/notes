import 'package:notes/notes.dart';

void showNoteDialog({
  required BuildContext context,
  required String title,
  required String buttonText,
  required VoidCallback onPressed,
  required TextEditingController textController,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        title,
        style: GoogleFonts.dmSerifText(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      content: TextField(
        controller: textController,
        decoration: buildTextFieldDecoration(
          context,
          title == AppLocalizations.of(context).translate('createNoteTitle') ? AppLocalizations.of(context).translate('enterNoteHint') : AppLocalizations.of(context).translate('editNoteHint'),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            if (textController.text.trim().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    AppLocalizations.of(context).translate('noteCannotBeEmpty'),
                    style: TextStyle(color: Theme.of(context).colorScheme.onError),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.error,
                ),
              );
              return;
            }
            onPressed();
            textController.clear();
            Navigator.pop(context);
          },
          child: Text(buttonText),
        ),
      ],
    ),
  );
}
