import 'package:assignment_worh/Music%20Player/home.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicPlayer2(),
  ));
}
class MusicPlayer2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MusicPlayer2State();

}
class _MusicPlayer2State extends State<MusicPlayer2>{
  late PageController _pageController;
  int selectedIndex=0;
  var screens=[
    HomePage(),
    

  ];
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,
    bottomNavigationBar: SlidingClippedNavBar(
      backgroundColor:Colors.black,
      barItems:[
        BarItem(
          icon:Icons.home,
          title:'Home',
        ),
        BarItem(
          icon:Icons.search_off_rounded,
          title:'Search',
        ),
        BarItem(
          icon:Icons.queue_music,
          title:'Playlist',
        ),
      ],
      selectedIndex: selectedIndex,
      onButtonPressed: onButtonPressed,
      activeColor:Colors.pinkAccent,
      inactiveColor: Colors.white,
    ),
    body: Center(
      child: screens[selectedIndex],
    ),
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