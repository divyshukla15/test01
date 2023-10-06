// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/beneficiary.dart';
import 'package:flutter_application_1/choooseCategory.dart';
import 'package:flutter_application_1/doc_desc.dart';
import 'package:flutter_application_1/doc_name.dart';
import 'package:flutter_application_1/give_access.dart';
import 'package:flutter_application_1/image.dart';
import 'package:flutter_application_1/pickdate.dart';
import 'package:flutter_application_1/success.dart';
//import 'package:flutter_application_1/beneficiary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Colors.black87,
      theme: ThemeData.dark(),
      darkTheme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool Submit = false;
  final formKey = GlobalKey<FormState>();
  check() {
    if (formKey.currentState!.validate()) {
      setState(() {
        Submit = true;
      });
      print(Submit);
      if (Submit == true) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Success()));
      }
    } else {
      print("rishi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text('Add Document'),
          leading: Icon(Icons.arrow_back_ios),
        ),
        //backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Form(
              key: formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChooseCategory(),
                    SizedBox(height: 24),
                    DocName(),
                    SizedBox(height: 24),
                    DocDesc(),
                    SizedBox(height: 24),
                    Beneficiary(),
                    SizedBox(height: 24),
                    GiveAccess(),
                    SizedBox(height: 24),
                    Text(
                      "Upload Document",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 24),
                    ImagePick(),
                    SizedBox(height: 24),
                    Date(),
                    SizedBox(height: 24),
                    ElevatedButton(
                        onPressed: () {
                           check();
                         // print(body());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50)),
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ]),
            ),
          ),
        ));
  }
}

Map<String, dynamic> body() {
  final document_name = docName.text;
  final document_description = docDesc.text;
  final category_id = dropdownValue;
  final date_given = dateController.text;
  final document_file_name = image!.path.toString();
  return {
    "user_id": 45,
    "document_name": document_name,
    "description": document_description,
    "category_id": category_id,
    "date": date_given,
    "documents": [
      {
        "document_file_name": document_file_name,
        "document_size": "127270",
        "document_type": "image/jpeg"
      }
    ]
  };
}
