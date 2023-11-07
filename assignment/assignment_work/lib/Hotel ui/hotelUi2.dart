import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
     home: HotelUi2(),));
}
class HotelUi2 extends StatefulWidget{
  HotelUi2({super.key});


  @override
  State<HotelUi2> createState() => _HotelUi2State();
   }

class _HotelUi2State extends State<HotelUi2>{
  int index=0;
  Color iconColor= Colors.white;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      currentIndex: index,
      onTap: (tappedIndex){
        setState(() {
          index=tappedIndex;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            ),
            label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),label: "Favorite"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),label: "Settings"),  
      ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 350,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/crown.jpeg"))),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FivePointedStar(
                          selectedColor: Colors.purple,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              ),
                              Text(
                                "8 km to lulumall",
                                style: TextStyle(color: Colors.grey),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(370, 50),
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: 
                              BorderRadius.all(Radius.circular(20)))),
                          onPressed: () {},
                           child: Text("Book now")),
                           SizedBox(
                            height: 20,
                           ),
                           Text("Crown Plaza",
                           style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.w500
                           ),
                          ),
                      ],
                    ),
                  ),)
              ],
            ),
            Positioned(
            top: 290,
            right: 10,  
            child: IconButton(
              onPressed: () {
                setState(() {
                  iconColor=Colors.red;
                });
              },
              icon: Icon(
                FontAwesomeIcons.heart,
                size: 30,
                color: iconColor,
              ),
              )),
              Positioned(
                top: 290,
                left: 30,
                child: Text("Crowne Plaza\nKochi,kerala",
              style: TextStyle(color: Colors.white,fontSize: 30),)
              ),
              Positioned(
                top: 290,
                left: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    )
                  ),
                  onPressed: () {}, child: Text("8.4/85 reviews"))),
                  Positioned(
                    top: 365,
                    right: 20,
                    child: Column(
                      children: [
                        Text("\$200",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),),
                        Text("/per night",
                        style: TextStyle(color: Colors.grey),)
                      ],
                    ))
          ]),
      ),
   );
  }

}