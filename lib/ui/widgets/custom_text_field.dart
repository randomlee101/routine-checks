import 'package:flutter/material.dart';

class PlainTextField extends StatelessWidget {
  const PlainTextField(
      {Key? key, this.label, this.stream, this.onChanged, this.maxLines})
      : super(key: key);

  final String? label;
  final Stream? stream;
  final Function(String? e)? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: stream,
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$label"),
                TextFormField(
                  onChanged: onChanged,
                  maxLines: maxLines,
                ),
              ],
            ),
          );
        });
  }
}
