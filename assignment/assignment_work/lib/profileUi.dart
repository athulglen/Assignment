import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: ProfileUi(),));
}
class ProfileUi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: 
        IconButton(onPressed: () {},icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.short_text)),
          SizedBox(
            width: 10,
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/cb1.jpeg"),
                  radius: 70,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60,right: 60,top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromRGBO(59, 89, 152, 1),
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                      ),
                    ),),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.white,
                          ),),
                      ),
                      ),
                      Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.blue,
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),),
                      ),
                      ),
                      Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 50, 160, 245),
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            color: Colors.white,
                          ),),
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Christian Bale",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                        ),),
                        Text(
                          "@hristianbale_",
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50,right: 50,top: 20),
                            child: Text(
                              "English actor who is known for his complex characters",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ),
                ],
              ),
           )
          ],
        ),
        Container(
          height: 260,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(children: [
                Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.userShield),
                    title: Text(
                      "Privacy",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios))),
                ),
                ),
                Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.clockRotateLeft),
                    title: Text(
                      "Purchase History",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios))),
                ),
                ),
                Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.circleQuestion),
                    title: Text(
                      "Help & Support",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios))),
                ),
                ),
                Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.gear),
                    title: Text(
                      "Settings",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios))),
                ),
                ),
                Padding(
                padding: EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Colors.white70,
                  child: ListTile(
                    leading: FaIcon(FontAwesomeIcons.userPlus),
                    title: Text(
                      "Invite a friend",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    trailing: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios))),
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Colors.white70,
                    child: ListTile(
                      onTap: () {},
                      leading: 
                      FaIcon(FontAwesomeIcons.arrowRightFromBracket),
                      title: Text(
                        "Logout",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ]),
              )),
        ),
      ]),
    );
  }

}