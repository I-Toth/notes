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
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          DrawerMenuTile(
            title: 'Notes',
            leading: const Icon(Icons.home),
            onTap: () => Navigator.pop(context),
          ),
          DrawerMenuTile(
            title: 'Settings',
            leading: const Icon(Icons.settings),
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
