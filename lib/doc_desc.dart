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
    return Container(
      height: 50,
      child: const TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            isDense: true,
            border: OutlineInputBorder(),
            hintText: 'Document Description',
            focusColor: Colors.amberAccent,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
