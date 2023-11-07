import 'package:assignment_worh/Hotel%20ui/hotelUi2.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';

class HotelUi1 extends StatefulWidget{
  HotelUi1({super.key});

  @override
  State<StatefulWidget> createState() => _HotelUi1State();

}

class _HotelUi1State extends State<HotelUi1>{
  var icons =[
    Icons.hotel,
    Icons.restaurant,
    Icons.local_cafe,
  ];
  var color=[
    Colors.pink,
    Colors.lightBlueAccent,
    Colors.amberAccent,
  ];
  var image=[
   "assets/image/a1.jpeg",
   "assets/image/a2.jpeg",
   "assets/image/a3.jpeg",
   "assets/image/a4.jpeg",
   "assets/image/a5.png",
  ];
  var reviews=[
    "(120 reviews)",
    "(100 reviews)",
    "(220 reviews)",
    "(477 reviews)",
    "(500 reviews)",
  ];
  var title=[
    "Crowne Plaza",
    "Taj Falaknuma Palace",
    "The Oberoi Udaivilas",
    "Taj Lake Palace",
    "The Oberoi Grand"
  ];
  var location=[
    "Kochi,Kerala",
    "Hyderbad,Andhra Pradesh",
    "Udaipur,Rajasthan",
    "Udaipur,Rajasthan",
    "Kolkata,West Bengal"
  ];
  var moneys=[200,300,400,350,80];
  var names=["Hotel","Restaurant","Cafe"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(
      top: false,
      bottom: true,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.cyan,
            toolbarHeight: 30,
            leading: const Icon(Icons.menu),
            actions: [
              const Icon(Icons.favorite_border),
              const SizedBox(
                width: 20,
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.cyan,
              toolbarHeight: 150,
              elevation: 0,
              title: Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Center(child: Text("Type your location"),),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        filled: true,
                        hintText: "Bouddha,Kathmandu",
                        prefixIcon: const Icon(Icons.search_rounded),
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(
            left: 10,right: 10,bottom: 20,top: 20
          ),
          child: Card(
            color: color[index],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(icons[index]),Text(names[index])],
            ),
          ),
          ),
          childCount: 3,
          ), 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,crossAxisSpacing: 5
            )),
          SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => 
                      HotelUi2())));
                  },
                  child: Container(
                    height: 342,
                    width: 444,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10)),
                        image: DecorationImage(image: AssetImage(image[index]),
                        )),
                  ),
                ),
                const Positioned(
                  right: 10,
                  top: 10,
                  child: Icon( Icons.star_border,
                  color:Colors.white,
                  )),
                  Positioned(
                    right:10,
                    top:155,
                    child: SizedBox(
                      height: 40,
                      width: 60,
                      child: Card(
                        shape: const Border(),
                        child: Center(
                          child: Text( "\$${moneys[index]}",
                          style: const TextStyle(
                            color: Colors.black),
                          ),
                        ),
                      ),
                    )),
                    Positioned(
                      top: 200,
                      child: Container(
                        height: 200,
                        width: 444,
                        color: Colors.white,
                        child: Padding(padding: 
                        const EdgeInsets.only(
                          left: 20,top: 15
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              location[index],
                              style: 
                              const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [FivePointedStar(
                                selectedColor: Colors.green,
                                defaultSelectedCount: 4,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                reviews[index],
                                style: const TextStyle(
                                  color: Colors.grey
                                ),
                              ),
                              ],
                            ),
                          ],
                        ),
                        ),
                      ),
                      ),
              ],
            ), ),
          ),
          childCount: 5)),
        ],
      )),
   );
  }
}