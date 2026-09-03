import 'package:firstapp/components/comman_card_button.dart';
import 'package:firstapp/components/common_button.dart';
import 'package:firstapp/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CommanCard extends StatelessWidget {
  //this is construtor properties
  const CommanCard({
    super.key,
    // required this.icon,
    required this.transactionId,
    required this.badgeName,
    required this.title,
    required this.btnTitle,
    required this.onButtonPressed,
    required this.onMessagePressed,
  });

  // final Icon icon;
  final String transactionId;
  final String badgeName;
  final String title;
  final String btnTitle;

  final dynamic onMessagePressed;
  final dynamic onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                //tag icon and text beginning here
                const Icon(
                  Icons.tag_outlined,
                  size: 20,
                  color: Color(0xFF4B73B0),
                ),
                const SizedBox(width: 3),
                Text(
                  transactionId,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffe4f1f2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  //badge section start from here
                  child: Text(
                    badgeName,
                    style: TextStyle(
                      color: Color(0xff397786),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: AppColors.priFontFamily,
                height: 1.5,
                color: Color(0xff292929),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                // ElevatedButton.icon(
                //   onPressed: () {
                //     print("Connect Buyer Team clicked");
                //   },
                //   icon: const Icon(Icons.add, size: 16,),
                //   label: Text(btnTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: AppColors.primary,
                //     foregroundColor: AppColors.white,
                //     elevation: 0,
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 10,
                //       vertical: 5,
                //     ),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                // ),
                CommanCardButton(title: btnTitle, btnIcon: Icons.add,),
                const SizedBox(width: 10),
                // message icons container start from here
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xffffc526),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      print(
                        "Print : Please redirect me to the notification scren",
                      );
                    },
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
