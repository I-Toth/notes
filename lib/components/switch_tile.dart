import 'package:notes/notes.dart';

class SwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(dimens12),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: dimens20,
        horizontal: dimens24,
      ),
      margin: const EdgeInsets.symmetric(horizontal: dimens24, vertical: dimens12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          CupertinoSwitch(
            activeColor: Theme.of(context).colorScheme.secondary,
            trackColor: Theme.of(context).colorScheme.inversePrimary,
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
