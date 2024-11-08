import 'package:notes/notes.dart';

class NoteSettings extends StatelessWidget {
  final void Function()? onEditTap;
  final void Function()? onDeleteTap;

  const NoteSettings({
    super.key,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onEditTap!();
          },
          child: Container(
            height: dimens50,
            color: Theme.of(context).colorScheme.surface,
            child: Center(
              child: Text(
                AppLocalizations.of(context).translate('edit'),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
            onDeleteTap!();
          },
          child: Container(
            height: dimens50,
            color: Theme.of(context).colorScheme.surface,
            child: Center(
              child: Text(
                AppLocalizations.of(context).translate('delete'),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
