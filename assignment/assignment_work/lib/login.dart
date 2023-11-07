import 'package:assignment_worh/register2.dart';
import 'package:assignment_worh/splash2.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Login2()));
}
class Login2 extends StatefulWidget{
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2>{
  var formkey =GlobalKey<FormState>();
  var nopasswordvisiblity=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              ),
              ),
              Padding(
                padding: 
                EdgeInsets.only(bottom: 10.0,left: 10,right: 10),
                child: Text(
                  "Welcome back! Login with your credentials",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding
              (padding: 
              EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_pin_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                    hintText: "Email ID"),
                    validator: (email){
                      if(email!.isEmpty  || !email.contains("@")){
                        return "field is empty/Invalid";
                      }else{
                        return null;
                      }
                    }),
              ),
              Padding(
                padding:
                 EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
                 child: TextFormField(
                  obscureText: nopasswordvisiblity,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if(nopasswordvisiblity ==true){
                            nopasswordvisiblity=false;
                          }else{
                            nopasswordvisiblity=true;
                          }
                        });
                    },
                    icon: Icon(
                      nopasswordvisiblity ==true
                      ?Icons.visibility_off_sharp
                      :Icons.visibility,
                    )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                      hintText: "Password"),
                      validator: (password){
                        if(password!.isEmpty || password.length <6){
                          return 'field is empty Invalid Length';
                        }else{
                          return null;
                        }
                      },
                 ),
                 ),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(390, 50),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if(valid){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => splash2()));
                    }else{
                      Fluttertoast.showToast(
                        msg: "Invalid Username or Password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.green,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    }
                  },
                  child:Text("Login")),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => register2()));
                  },
                  child: Text(
                    "Do you have an account? Sign up",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ))
          ],
          )),
    );
  }
}