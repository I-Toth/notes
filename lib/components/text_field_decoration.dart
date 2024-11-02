import 'package:notes/notes.dart';

InputDecoration buildTextFieldDecoration(
    BuildContext context, String hintText) {
  return InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: Theme.of(context).colorScheme.surface.withOpacity(0.1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        width: 1.5,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
        width: 2,
      ),
    ),
  );
}
