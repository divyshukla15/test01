import 'package:flutter/material.dart';

class Beneficiary extends StatefulWidget {
  const Beneficiary({super.key});

  @override
  State<Beneficiary> createState() => _BeneficiaryState();
}

List<String> list = <String>[
  'Beneficiary 1',
  'Beneficiary 2',
  'Beneficiary 3',
  'Beneficiary 4'
];
TextEditingController benefic = TextEditingController();
class _BeneficiaryState extends State<Beneficiary> {
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
         icon: Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        padding: EdgeInsets.only(left: 10, right: 10),
        hint: const Text("Beneficiary (optional)"),
        value: dropdownValue != "" ? dropdownValue : null,
        underline: Container(height: 2),
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
