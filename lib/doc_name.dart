import 'package:flutter/material.dart';

class DocName extends StatefulWidget {
  const DocName({super.key});

  @override
  State<DocName> createState() => _DocNameState();
}

class _DocNameState extends State<DocName> {
  TextEditingController docName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return " Fill this Field";
          } else {
            docName = value as TextEditingController;
          }
          return null;
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            isDense: true,
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            hintText: 'Document Name',
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
