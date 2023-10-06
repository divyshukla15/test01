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
];String dropdownValue = '';
TextEditingController category = TextEditingController();
class _ChooseCategoryState extends State<ChooseCategory> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 50,
      // decoration: BoxDecoration(
      //     border: Border.all(color: Colors.white),
      //     borderRadius: BorderRadius.all(Radius.circular(8.0))),
      width: MediaQuery.of(context).size.width,
      child: DropdownButtonFormField(
        validator: (value) => value == null ? 'Please select a field' : null,
        decoration: const InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.white)),
            isDense: true,),
        //  validator: (value){
        //   if (value == null) {
        //     return " Please Choose Category";
        //   } else {
        //     category.text = value.toString(); 
        //   }
        //   return null;
        
        // //  },
        //   padding: EdgeInsets.only(left: 10 ,right: 10),
          icon: Icon(Icons.keyboard_arrow_down),
          isExpanded: true,
          value: dropdownValue!=""?dropdownValue:null,
          hint: const Text("Choose Category"),
          //underline: Container(),
      
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
