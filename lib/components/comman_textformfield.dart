import 'package:flutter/material.dart';

class CommanTextformfield extends StatelessWidget {
  //this is a contructor property
  const CommanTextformfield({
    super.key,
    required this.label,
    required this.hint,
    required this.isRequired,
  //mentioned  required things above
 });

  final String label;
  final String hint;
  final bool  isRequired;


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            errorStyle: TextStyle(height: 0.8, fontSize: 12),
            constraints: BoxConstraints(minHeight: 50, maxHeight: 50),

            errorMaxLines: 1,
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
