import 'package:flutter/material.dart';
import 'package:flutter_application_1/beneficiary.dart';
import 'package:flutter_application_1/choooseCategory.dart';
import 'package:flutter_application_1/doc_desc.dart';
import 'package:flutter_application_1/doc_name.dart';
import 'package:flutter_application_1/give_access.dart';
import 'package:flutter_application_1/image.dart';
import 'package:flutter_application_1/pickdate.dart';
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
     darkTheme: ThemeData( ),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(backgroundColor: Colors.black12,
          title: Text('Add Document'),
          leading: Icon(Icons.arrow_back_ios),
        ),
       //backgroundColor: Colors.black12,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
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
              Text("Upload Document", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              SizedBox(height: 24),
              ImagePick(),
              SizedBox(height: 24),
              Date(),
              SizedBox(height: 24),
             
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      minimumSize: Size(MediaQuery.of(context).size.width, 50)),
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  
              
            ]),
          ),
        ));
  }
}
