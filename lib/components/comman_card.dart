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
                const Icon(Icons.tag, color: Colors.blue),
                const SizedBox(width: 3),
                Text(transactionId, style: TextStyle(color: Colors.blue)),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffe4f1f2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    badgeName,
                    style: TextStyle(
                      color: Color(0xff397786),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                  height: 1.5,
                color: Color(0xff292929),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    print("Connect Buyer Team clicked");
                  },
                  icon: const Icon(Icons.add, size: 16),
                  label: Text(btnTitle, style: TextStyle(fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff506995),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

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
