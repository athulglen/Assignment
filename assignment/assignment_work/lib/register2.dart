import 'package:assignment_worh/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: register2()));
}
class register2 extends StatefulWidget{
  const register2({super.key});

  @override
  State<register2> createState() => _register2State();
}

class _register2State extends State<register2>{
  var formkey =GlobalKey<FormState>();
  var nopasswordvisiblity=true;
  var nopasswordvisiblity2=true;
  String? pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: 
              EdgeInsets.only(bottom: 18.0,left: 10,right: 10),
              child: Text(
                "Sign up",
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
                  "Create an Account ,Its free",
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
                  Padding(
                padding:
                 EdgeInsets.only(bottom: 30.0,left: 10,right: 10),
                 child: TextFormField(
                  obscureText: nopasswordvisiblity2,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.visibility_off),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if(nopasswordvisiblity2 ==true){
                            nopasswordvisiblity2=false;
                          }else{
                            nopasswordvisiblity2=true;
                          }
                        });
                    },
                    icon: Icon(
                      nopasswordvisiblity2 ==true
                      ?Icons.visibility_off_sharp
                      :Icons.visibility,
                    )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                      hintText: "Confirm Password"),
                      validator: (confirmpassword){
                        if(confirmpassword!.isEmpty || pass!= confirmpassword){
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
                        MaterialPageRoute(builder: (context) => Login2()));
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
                  child:Text("Sign Up")),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Login2()));
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
