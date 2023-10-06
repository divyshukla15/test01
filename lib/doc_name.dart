import 'package:flutter/material.dart';

class DocName extends StatefulWidget {
  const DocName({super.key});

  @override
  State<DocName> createState() => _DocNameState();
}
 TextEditingController docName = TextEditingController();
class _DocNameState extends State<DocName> {
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50,
      child: TextFormField(
        controller: docName,
        validator: (value) {
          if (value!.isEmpty) {
            return " Fill this Field";
          } else {
            docName.text = value.toString() ;
          }
          return null;
        },
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            isDense: true,
            // disabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(8.0))),
            hintText: 'Document Name',
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
