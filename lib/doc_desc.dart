import 'package:flutter/material.dart';

class DocDesc extends StatefulWidget {
  const DocDesc({super.key});

  @override
  State<DocDesc> createState() => _DocDescState();
}

TextEditingController docDesc = TextEditingController();

class _DocDescState extends State<DocDesc> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //eight: 50,
      child: TextFormField(
        controller: docDesc,
        validator: (value) {
          if (value!.isEmpty) {
            return " Fill this Field";
          } else {
            docDesc.text = value.toString();
          }
          return null;
        },
        decoration: const InputDecoration(
          focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            isDense: true,
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            //border: OutlineInputBorder(),
            hintText: 'Document Description',
            focusColor: Colors.amberAccent,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
