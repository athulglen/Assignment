import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Splash()));
}
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(5, 255, 255, 255),
      body: Container(
        height: 3000,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/icon/fruit.jpg"))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icon/ll.png",
                height: 100,
                width: 100,
                
                ),
                Text("Fresh Foods",
                style: GoogleFonts.dancingScript(
                  fontSize: 50,color: Color.fromARGB(255, 181, 16, 16)),
                  ),
                  Text("Tasty & Healthy",
                style: TextStyle(fontSize: 20,
                color: Color.fromARGB(255, 134, 246, 59),
                fontWeight: FontWeight.w500,
                ),
                  ),
              ],
            )),
      ),
    );
  }
  
}