import 'package:notes/notes.dart';

class Providers {
  Providers._();

  static List<SingleChildWidget> providers() => [
    ChangeNotifierProvider<NoteDatabase>(create: (_) => NoteDatabase()),
    ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
    ChangeNotifierProvider<LanguageProvider>(create: (_) => LanguageProvider()),
  ];
}