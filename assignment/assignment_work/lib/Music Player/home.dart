import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key});
  
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  late PageController _pageController;
  int selectedIndex=0;
  var names=[
    "Home",
    "Search",
    "Playlist",
    "Library",
  ];
  final List<String> imagess =[
    "assets/spotify/s1.png",
    "assets/spotify/s2.jpeg",
    "assets/spotify/s3.jpeg",
    "assets/spotify/s4.jpeg",
    "assets/spotify/s5.jpeg",
  ];
  final List<String> musicNames=[
    'Save your Tears',
    'Am I Dreaming',
    'Sdp interlude',
    'Not Over Yet',
    'IDFC',
    'Closer'
    'Rude',
  ];
  final List<String> musicArtist=[
    'The Weeknd',
    'Metro Boomin,A\$Ap Rocky',
    'Travis Scott',
    'KSI,Tom Grennan',
    'Blackbear',
    'The Chainsmokers ,Halsey',
    'MAGIC',
  ];
  final List<String> recommend=[
    "assets/playlist/p1.png",
    "assets/playlist/p2.jpeg",
    "assets/playlist/p3.jpeg",
    "assets/playlist/p4.jpeg",
    "assets/playlist/p5.jpeg",
    "assets/playlist/p6.jpeg",
    "assets/playlist/p7.jpeg",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Musify',
          style: GoogleFonts.baumans(
            color: Colors.pinkAccent,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(16.0),
          child: Text(
            'Suggested Playlists',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent
            ),
          ),),
          Container(
            height: 230,
            width: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagess.length,
               itemBuilder: ((context, index) {
                 return Padding(padding: EdgeInsets.all(8.0),
                 child: Card(
                  child: Center(child: Image.asset(imagess[index]),),
                 ),
                 );
               })),
          ),
          Padding(padding: EdgeInsets.all(16.0),
          child: Text( 'Recommended for you',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent
          ),),),
          Expanded(child: ListView.builder(itemCount: musicNames.length,
           itemBuilder: ((context, index) {
          return Padding(padding: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              musicNames[index],
              style: TextStyle(color: Colors.pinkAccent),
            ),
            subtitle: Text(
              musicArtist[index],
              style: TextStyle(color: Colors.grey),
            ),
            leading: Image.asset(recommend[index]),
            trailing: Wrap(children: [
              Icon( Icons.star_border,
              color:Colors.pinkAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.download_outlined,
                color: Colors.pinkAccent,
              )
            ],),
          ),)  ;
          })))
        ],
      ),
    );
  }
  @override
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