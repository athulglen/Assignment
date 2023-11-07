import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,//to remove the debug banner
    home:ListView2()));
}
class ListView2 extends StatelessWidget{
  var name=[
    "Apple","Mango","Banana","Grapes","Watermelon","Kiwi","Orange","Peach","Pinapple","Cherry",
  ];
  var unit=[
    "Kg","Doz","Doz","Kg","Kg","Pc","Doz","Kg","Kg","Doz"
  ];
  var image  = [
           "assets/image/apple.png",
           "assets/image/mango.png",
"assets/image/bananas.png",
"assets/image/grapes.png",
"assets/image/donut.png",
"assets/image/hamburger.png",
"assets/image/orange.png",
"assets/image/pineapple.png",
"assets/image/pizza.png",
"assets/image/ramen.png",
  ];
  var price =[20,30,10,8,25,40,15,10,20,33];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  backgroundColor: Colors.blue,
  title: Text(
    "Product List",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24, // Adjust the font size as needed
    ),
  ),
  centerTitle: true, // Center the title horizontally
 actions: [
    Stack(
      children: [
        Container(
          height: 36, // Adjust the height to increase the icon size
          width: 36, // Adjust the width to increase the icon size
          child: Icon(Icons.shopping_cart, size: 30), // Adjust the icon size
        ),
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            constraints: BoxConstraints(
              minWidth: 18,
              minHeight: 18,
            ),
            child: Text(
              "0",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
    SizedBox(width: 15),
    // Add other actions here if needed
  ],
),
      body:
       ListView(
        children: List.generate(10,
         (index) => Card(color: Color.fromARGB(0, 164, 164, 164),
          child: ListTile(
          title: Text("Name: ${name[index]}",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Unit: \$ ${unit[index]}",style: TextStyle(fontWeight: FontWeight.bold)),
          Text("Price: \$ ${price[index]}", style: TextStyle(fontWeight: FontWeight.bold)), 
        ],
      ),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
          trailing:Wrap(
  direction: Axis.vertical,
  children: [
    Container(
      width: 100, // Set the width as needed
      height: 40, // Set the height as needed
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 29, 28, 28),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          "Add to Cart",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16, // Adjust the font size as needed
          ),
        ),
      ),
    ),
    SizedBox(width: 15),
  ],
),
         )))),
    );
  }

}