import 'dart:html';

import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: StagGrid(),));
}
class StagGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("Staggered GridView"),
    ),
    body: SingleChildScrollView(
      child: StaggeredGrid.count(crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              width: 300,
              height: 150,
              decoration: 
              const BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/image/mystery.jpeg")),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Mysteries of the Universe",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15
                    ),),),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("20 Jun 2013\nCarl Sagan",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Colors.grey
                    ),),)
                ],
              ),
            )
          ),
          
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 4,
            child: Container(
              width: 300,
              height: 150,
              decoration: 
              const BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 380,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/image/ernest.jpeg")),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("The Empire State Building",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15
                    ),),),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("13 Jun 2013\nErnest Hemigway",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Colors.grey
                    ),),)
                ],
              ),
            )
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2.5,
            child: Container(
              width: 300,
              height: 150,
              decoration: 
              const BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/image/mount.jpeg")),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("The Mount Everest",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15
                    ),),),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("07 Jun 2013\nVincent Van Gigh",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Colors.grey
                    ),),)
                ],
              ),
            )
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              width: 300,
              height: 150,
              decoration: 
              const BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/image/sky.jpeg")),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Sky Diving",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15
                    ),),),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("20 Jun 2013\nCarl Sagan",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Colors.grey
                    ),),)
                ],
              ),
            )
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              width: 300,
              height: 150,
              decoration: 
              const BoxDecoration(color: Colors.white,boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0,3)
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160,
                    width: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/image/car.png")),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    const Padding(padding: EdgeInsets.all(8.0),
                    child: Text("Car",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 15
                    ),),),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    child: Text(
                      "20 Jun 2013\nCarl Sagan",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )),
        ],
      ),
    ),
   );
  }
  
}