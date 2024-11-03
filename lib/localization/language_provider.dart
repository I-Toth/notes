import 'package:notes/notes.dart';

class LanguageProvider extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  LanguageProvider() {
    _locale ??= PlatformDispatcher.instance.locale.languageCode == 'hu' ? const Locale('hu') : const Locale('en');
  }

  void setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
