import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: ContactBook()));
}
class ContactBook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Contact List"),
      ),
      body: ListView(
        children: const [
         ListTile(
          title: Text("Shan",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("8797456230"),
          leading: CircleAvatar(
            backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Hari",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("326568887"),
          leading: CircleAvatar(
             backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text("Paul",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("567741658"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Ajmal",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("464651891648"),
          leading: CircleAvatar(
            backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Jees",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("5454451444"),
          leading: CircleAvatar(
             backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text("Saul",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("8744515117"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Jimmy",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("518879419519"),
          leading: CircleAvatar(
            backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Aedrin",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("949519194"),
          leading: CircleAvatar(
             backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text("Benji",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("51911655164"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("Tom",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("8797456230"),
          leading: CircleAvatar(
            backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
          title: Text("James",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("326568887"),
          leading: CircleAvatar(
             backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
          trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:Text("Chris",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("65161646465"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png")),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ) ,
    );
  }

}