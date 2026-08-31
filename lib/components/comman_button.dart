import 'package:firstapp/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../dashboard.dart';

class CommanButton extends StatelessWidget {
  // this is a contructor property
  const CommanButton({
    super.key,
    required this.title,
    this.btnIcon,
    //mention all the required here
  });

  final String title;
  final IconData? btnIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Dashboard()));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,

            end: Alignment.bottomRight,
            colors: const [
              Color(0xFF283655),
              Color(0xFF53699A),
              Color(0xFF3F61AB),
            ],
            stops: const [0.0, 1.0, 1.0],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(btnIcon,color: AppColors.white,size: 20,),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
