import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variables

  String name="";
  String email="";
  String mobile="";
  String password="";
  String confirmPass="";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Form(
          key: _formKey


          child: Column(

            mainAxisAlignment: .center,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Name",
                ),
                onChanged:(value){
                  name = value;
                },
                validator:(value){
                  if(value == null || value.isEmpty){
                    return "Please Enter Name"
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Email",
                ),
                onChanged:(value){
                  email = value;
                },
                validator:(value){
                  if(value == null || !value.contains=("@")){
                    return "Please Enter Valid Email"
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Mobile",
                ),
                onChanged:(value){
                  name = value;
                },
                validator:(value){
                  if(value == null || value.length != 10){
                    return "Please Enter Valid Mobile Number"
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter Password",
                ),
                obscureText: true,
                onChanged:(value){
                  name = value;
                },
                validator:(value){
                  if(value == null || value.length < 8){
                    return "Password should contain minimum 8 characters"
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                ),
                onChanged:(value){
                  name = value;
                },
                validator:(value){
                  if(value != password){
                    return "Passwords don't match"
                  }
                  return null;
                },
              ),

              ElevatedButton(
                onPressed:(){

                  if _formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                        Text(
                            "Registration Successful",
                            "Name: $name",
                            "Name: $email",
                            "Name: $mobile"
                        ),
                      ),
                    );
                  }
                },
                child: Text("Submit"),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
