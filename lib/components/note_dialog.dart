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
        decoration: buildTextFieldDecoration(context, title == 'Create Note' ? 'Enter your note here' : 'Edit your note here'),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            if (textController.text.trim().isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Note cannot be empty',
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
