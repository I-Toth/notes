import 'package:notes/notes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();

  runApp(
    MultiProvider(
      providers: Providers.providers(),
      child: const App(),
    ),
  );
}


