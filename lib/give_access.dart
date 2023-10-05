import 'package:flutter/material.dart';

class GiveAccess extends StatefulWidget {
  const GiveAccess({super.key});

  @override
  State<GiveAccess> createState() => _GiveAccessState();
}
TextEditingController giveExcess = TextEditingController();
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class _GiveAccessState extends State<GiveAccess> {
   String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(height: 50,
      decoration:
          BoxDecoration(border: Border.all(color:Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<String>(
         icon: Icon(Icons.keyboard_arrow_down),
        value: dropdownValue!=""?dropdownValue:null,
        isExpanded: true,
        padding: EdgeInsets.only(left: 10, right: 10),
        hint: Text("Give Access to (optional)"),
        underline: Container(height:2),
        // initialSelection: list.first,
        onChanged: (String? value) {
            setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      ),
    );
  }
}