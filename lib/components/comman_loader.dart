import 'package:flutter/material.dart';

class CommanLoader extends StatelessWidget {
  const CommanLoader({super.key, this.message});

  //optional text under the spinnder - Loading activity
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircularProgressIndicator(strokeWidth: 3),
          if (message != null) ...[
            const SizedBox(height: 12,),
            Text(message! ,style: const TextStyle(color: Colors.grey)),
          ],
        ],
      ),
    );
  }
}
