import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,//to remove the debug banner
    home:Whatsapp1()));
}
class Whatsapp1 extends StatelessWidget{
  var name=[
    "Sreya",
    "Aleena",
    "Ann",
    "Jess",
    "Aaron",
    "Tobi",
    "Mark",
    "Chris",
    "Paul",
    "Shiya",
    "Mathew"
  ];
  var image  = [
          "assets/image/71.jpeg",
          "assets/image/72.jpeg",
          "assets/image/73.png",
          "assets/image/74.jpeg",
          "assets/image/75.jpeg",
          "assets/image/76.jpeg",
          "assets/image/77.jpeg",
          "assets/image/78.png",
          "assets/image/79.jpeg",
          "assets/image/80.jpeg",
          "assets/image/lion.png",
  ];
  var price =[
    "Photo",
    "https://www.youtube.com/watch?v=VYvvv6vR6A0",
    "Sticker",
    "Hello",
    "0.07",
    "https://in.pinterest.com/pin/27514247715856262/",
    "https://github.com/sreedeviluminar/project_june2/blob/master/lib/listview2.dart",
    "**********************",
    "Mmm",
    "Sticker",
    "https://aniwatch.to/watch/one-piece-100?ep=102008%2F",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
        backgroundColor: Color.fromARGB(255, 1, 183, 89),
        title: Container(height: 25,
        width: 1000,
        child:Text ("Whatsapp")),
        actions: [Icon(Icons.camera_alt_outlined),
        SizedBox(width: 20,),
        Icon(Icons.search),
        SizedBox(width: 10,),
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text("New Group")),
            PopupMenuItem(child: Text("New Community")),
            PopupMenuItem(child: Text("Archieved")),
            PopupMenuItem(child: Text("Starred Message")),
            PopupMenuItem(child: Text("Setting")),
            PopupMenuItem(child: Text("Log out")),
          ];SizedBox(width: 10,);
        })
        ],
      )),
      body: ListView(
        children: List.generate(11,
         (index) => Card(
          child: ListTile(
          title: Text(name[index]),
          subtitle: Text(" ${price[index]}"),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [
            Text("1.30 P.M"),
            SizedBox(
              width: 10,
              height: 10,
            ),
            CircleAvatar(
              minRadius: 7,
              maxRadius: 9,
              backgroundColor: Colors.green,
              child: Text("2"),
            ),
          ],),
         )))),
    );
  }

}