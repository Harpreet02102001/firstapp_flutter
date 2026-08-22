import 'package:flutter/material.dart';

// AppBar commonAppBar({
//   required String title,
//
//   // required Icon? actionIcon,
// }) {
//   return AppBar(title: Text(title));
// }

class CommanAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CommanAppbar({
    super.key,
    required this.title,
    this.actionIcon,
    this.onActionPressed,
  });

  final String title;
  final Icon? actionIcon;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style:TextStyle(
        fontSize: 16,
      ) ,),
      actions: actionIcon == null
          ? null
          : [IconButton(onPressed: onActionPressed, icon: actionIcon!)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
