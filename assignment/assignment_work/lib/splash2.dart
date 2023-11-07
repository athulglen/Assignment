import 'package:assignment_worh/register2.dart';
import 'package:flutter/material.dart';

import 'login.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: splash2(),));
}
class splash2 extends StatefulWidget{
  splash2({super.key});
  
  @override
  State<splash2> createState() => _splash2State();
  
}

class _splash2State extends State<splash2>{
  var nopasswordvisiblity=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
              child: Text("Hello There!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
            child: Text(
              "Automatic identity verification which enable you to verify your identity",
            style: TextStyle(
              fontSize: 11,
            color: Colors.grey,
            fontWeight: FontWeight.bold),
            ),
            ),
            Padding(
              padding: EdgeInsets.only(
              top: 5,bottom: 1.0,left: 10,right: 10),
              child: Image.asset("assets/image/log.jpeg"),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,bottom: 18.0,left: 10,right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ), onPressed: () { 
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login2()));
                     },
                     child: Text("Login")),
                     ),
                     Padding(
                      padding: EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(300, 50),
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onPressed: (() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => register2()));
                        }), child: Text("Sign up")),
                        ),
          ],)),
    );
  }
}
