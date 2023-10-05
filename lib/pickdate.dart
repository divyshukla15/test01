
import 'dart:core';


import 'package:date_time/date_time.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}
//var currentDate='Date';
class _DateState extends State<Date> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(height: 50,
    decoration:
          BoxDecoration(border: Border.all(color:Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: TextField(
        controller: dateController,
       // cursorRadius: Radius.circular(5),
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
              
          hintText: 'Date',
          contentPadding: EdgeInsets.only(top: 10, left:10)
           
        ),   readOnly: true, 
        onTap: ()async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                   initialDate: DateTime.now(),
                  firstDate:DateTime(2000), 
                  lastDate: DateTime(2101)
              );
              if (pickedDate != null){
                 String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                setState(() {
                 dateController.text = formattedDate.toString();
                  print('date selected ${pickedDate.month}, ${pickedDate.date}');
                },);
                
              }
        },
      ),
    );
        
  }
}