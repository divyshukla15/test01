import 'package:flutter/material.dart';

class ChooseCategory extends StatefulWidget {
  const ChooseCategory({super.key});

  @override
  State<ChooseCategory> createState() => _ChooseCategoryState();
}

const List<String> list = <String>[
  ' Category One',
  ' Category Two',
  'Category Three',
  'Category Four'
];
TextEditingController category = TextEditingController();
class _ChooseCategoryState extends State<ChooseCategory> {
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      width: MediaQuery.of(context).size.width,
      child: DropdownButton<String>(
        padding: EdgeInsets.only(left: 10 ,right: 10),
        icon: Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        value: dropdownValue!=""?dropdownValue:null,
        hint: const Text("Choose Category"),
        underline: Container(),

        /// initialSelection: list.first,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
            //value = selectedValue;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(value: value, child: Text(value));
        }).toList(),
      ),
    );
  }
}
