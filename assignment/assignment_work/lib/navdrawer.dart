import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Drawer_Ex(),));
}
class Drawer_Ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          )),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.orangeAccent,
                Colors.pinkAccent,
                Colors.pinkAccent
              ],
              ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
              child: ListTile(
                leading: CircleAvatar(
                backgroundImage: AssetImage("assets/image/cns.jpeg"),
                radius: 30,
              ),
              title: Text("Christopher Nolan"),
              subtitle: Text("Film director and writer"),
              ),
            ),
            SizedBox(
              width: 60,
              height: 60,
            ),
            ListTile(
              leading: Icon(Icons.space_dashboard),
              title: Text("DashBoard"),
            ),
            ListTile(
              leading: Icon(Icons.leak_add),
              title: Text("Leads"),
            ),
            ListTile(
              leading: Icon(Icons.group_remove),
              title: Text("Clients"),
            ),
            ListTile(
              leading: Icon(Icons.rocket_launch),
              title: Text("Projects"),
            ),
            ListTile(
              leading: Icon(Icons.hail),
              title: Text("Patients"),
            ),
            ListTile(
              leading: Icon(Icons.subject),
              title: Text("Subcription"),
            ),
            ListTile(
              leading: Icon(Icons.payments),
              title: Text("Payments"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Users"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Library"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
            child: ListTile(
              leading: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(262, 150),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  
                }, child: Text("Logout")),
            ),
            ),
            ],
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/cns1.jpeg")),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(0,3)),
                ]
            ),
          ),),
          Padding(
            padding: EdgeInsets.only(top: 10,left: 10),
            child: Text("Christopher Nolan",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Text("""Christopher Nolan, a British-American filmmaker, has left an indelible mark on cinema through his unique storytelling style and mastery of the medium. Born on July 30, 1970, Nolan gained prominence with his breakthrough film "Memento" (2000), known for its non-linear narrative and exploration of memory. He later achieved immense acclaim with "The Dark Knight" trilogy, redefining the superhero genre with its darker, more grounded approach.
Nolan's films are characterized by intricate plots, philosophical themes, and mind-bending concepts. "Inception" (2010) delved into the nature of reality and dreams, while "Interstellar" (2014) explored space, time dilation, and human survival. His dedication to practical effects and emphasis on IMAX cinematography have enhanced the immersive experience of his works.
Often collaborating with composer Hans Zimmer, Nolan's films are known for their distinctive scores that heighten tension and emotion. He has garnered numerous accolades, including Oscar nominations for both directing and writing. Nolan's ability to blend commercial success with artistic integrity has solidified his status as a leading figure in contemporary cinema. His storytelling prowess and innovative approach continue to captivate audiences and inspire aspiring filmmakers worldwide.""",
textAlign:TextAlign.justify,
style: TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
),
),

                ))
      ],),
    );
  }

}