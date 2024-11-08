import 'package:notes/notes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDarkMode;
    final languageProvider = context.watch<LanguageProvider>();
    final isEnglish = languageProvider.locale?.languageCode == 'en';

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          SwitchTile(
            title: isDarkMode
                ? AppLocalizations.of(context).translate('lightMode')
                : AppLocalizations.of(context).translate('darkMode'),
            value: isDarkMode,
            onChanged: (value) =>
                context.read<ThemeProvider>().toggleTheme(),
          ),
          SwitchTile(
            title: isEnglish
                ? AppLocalizations.of(context).translate('switchToHungarian')
                : AppLocalizations.of(context).translate('switchToEnglish'),
            value: isEnglish ?? true,
            onChanged: (value) {
              final languageProvider = context.read<LanguageProvider>();
              if (value) {
                languageProvider.setLocale(const Locale('en'));
              } else {
                languageProvider.setLocale(const Locale('hu'));
              }
            },
          ),
        ],
      ),
    );
  }
}
