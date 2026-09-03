import 'package:flutter/material.dart';

// AppBar commonAppBar({
//   required String title,
//
//   // required Icon? actionIcon,
// }) {
//   return AppBar(title: Text(title));
// }

class CommanAppbar extends StatelessWidget implements PreferredSizeWidget {
   CommanAppbar({
    super.key,
    required this.title,
     this.actions,
  });

  final String title;
  List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style:TextStyle(
        fontSize: 16,
      ) ,),
      actions: actions
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
