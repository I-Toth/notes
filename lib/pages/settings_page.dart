import 'package:flutter/cupertino.dart';
import 'package:notes/notes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDarkMode;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 25,
        ),
        margin: const EdgeInsets.only(
          left: 25,
          right: 25,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              isDarkMode ? 'Light Mode' : 'Dark Mode',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            CupertinoSwitch(
              activeColor: Theme.of(context).colorScheme.secondary,
              trackColor: Theme.of(context).colorScheme.inversePrimary,
              value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
              onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
            ),
          ],
        ),
      ),
    );
  }
}
