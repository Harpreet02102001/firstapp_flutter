import 'package:firstapp/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CommanText extends StatelessWidget {
  //this contrutor of this class
  const CommanText({
    super.key,
    required this.title
  });

  final String title;


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        height: 1.5,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
