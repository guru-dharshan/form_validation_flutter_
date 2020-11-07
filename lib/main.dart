import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  var formkey= GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Container(

             child: Scaffold(
          appBar: AppBar(
            title: Text("form validation"),
          ),
          body: Form(
            key: formkey,
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Column(
               
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle,color:Colors.black87),
                        hintText: "Email id",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        )
                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return "Enter a email id";
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock,color:Colors.black87),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                        )

                    ),
                    validator: (String value){
                      if(value.isEmpty){
                        return "Enter a password";
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  FlatButton(
                    onPressed: (){
                    if(formkey.currentState.validate()){
                     // do whatever you want
                    }
                    },
                      color: Colors.greenAccent[200],
                      child: Text('Log in'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    }
}
