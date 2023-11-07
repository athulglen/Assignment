import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistPage extends StatefulWidget{
  PlaylistPage({super.key});
  
  @override
  State<StatefulWidget> createState() => _PlaylistPageState();
}
class _PlaylistPageState extends State<PlaylistPage>{
  late PageController _pageController;
  int selectedIndex=0;
  var imagess=[
    "assets/spotify/s1.png",
    "assets/spotify/s2.jpeg",
    "assets/spotify/s3.jpeg",
    "assets/spotify/s4.jpeg",
    "assets/spotify/s5.jpeg",
    "assets/spotify/s1.png",
    "assets/spotify/s2.jpeg",
    "assets/spotify/s3.jpeg",
    "assets/spotify/s4.jpeg",
    "assets/spotify/s5.jpeg",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.black,
            title: Center(
              child: Text("Playlist",
              style:  GoogleFonts.baumans(
                color: Colors.pinkAccent,fontSize: 35
              ),),
            ),
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    hintText: "Search...",
                    suffixIcon: Icon(Icons.search_off_rounded),
                    fillColor: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Padding(padding: EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imagess[index]))
              ),
            ),
          ),),
          childCount: 10), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
        ],
      )),
    );
  }
  void initState(){
    super.initState();
    _pageController=PageController(initialPage: selectedIndex);
  }
  void onButtonPressed(int index){
    setState(() {
      selectedIndex=index;
    });
    _pageController.animateToPage(selectedIndex, duration: Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }
}