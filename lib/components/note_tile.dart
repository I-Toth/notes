import 'package:notes/notes.dart';

class NoteTile extends StatelessWidget {
  final String text;
  final void Function()? onEditPressed;
  final void Function()? onDeletePressed;

  const NoteTile({
    super.key,
    required this.text,
    required this.onEditPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(dimens8),
      ),
      margin: const EdgeInsets.only(
        left: dimens24,
        right: dimens24,
        top: dimens12,
      ),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        trailing: Builder(
            builder: (context) => IconButton(
                  onPressed: () => showPopover(
                    width: dimens100,
                    height: dimens100,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    context: context,
                    bodyBuilder: (context) => NoteSettings(
                      onEditTap: onEditPressed,
                      onDeleteTap: onDeletePressed,
                    ),
                  ),
                  icon: Icon(
                    Icons.more_vert,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: dimens24,
                  ),
                )),
      ),
    );
  }
}
