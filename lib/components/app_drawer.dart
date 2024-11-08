import 'package:notes/notes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerTheme: const DividerThemeData(color: Colors.transparent),
            ),
            child: DrawerHeader(
              child: Icon(
                Icons.edit_note,
                size: dimens60,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          DrawerMenuTile(
            title: AppLocalizations.of(context).translate('notesMenuTitle'),
            leading:  Icon(
              Icons.home,
              size: dimens24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () => Navigator.pop(context),
          ),
          DrawerMenuTile(
            title: AppLocalizations.of(context).translate('settingsMenuTitle'),
            leading:  Icon(
              Icons.settings,
              size: dimens24,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
