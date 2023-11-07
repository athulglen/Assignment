import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridCustom()));
}

class GridCustom extends StatelessWidget {
  var name = [
    "Bag",
    "Watch",
    "Socks",
    "Shoe",
    "Pants",
    "Tshirt",
  ];
  var imagess = [
    "assets/products/bag.jpeg",
    "assets/products/watch.jpeg",
    "assets/products/socks.jpeg",
    "assets/products/shoe.jpeg",
    "assets/products/pants.jpeg",
    "assets/products/tshirt.jpeg",
  ];
  var price = [120, 100, 89, 450, 500, 250];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHRINE `"),
        leading: IconButton(
        icon: Icon(Icons.menu),  // You can replace 'Icons.menu' with the desired icon
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.tune),  // You can replace 'Icons.tune' with the desired icon
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage(imagess[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${name[index]}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$${price[index]}",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
