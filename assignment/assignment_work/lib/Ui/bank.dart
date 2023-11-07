import 'package:flutter/material.dart';

class TransactionsUi2 extends StatefulWidget{
  TransactionsUi2({super.key});
  
  @override
  State<StatefulWidget> createState() => _TransactionUi2State();
}

class _TransactionUi2State extends State<TransactionsUi2> {
  var icons1=[
    Icons.person,
    Icons.mail,
    Icons.payment,
    Icons.social_distance,
    Icons.schedule_send,
    Icons.qr_code,
  ];
  var cardss=[
    "My Account",
    "load eSewa",
    "Payment",
    "Fund Transfer",
    "Schedule Payment",
    "Scan To Pay",
  ];
  var transactions=[
    "NPR. 10,000.00",
    "NPR. 20,000.00",
    "NPR. 70,000.00",
    "NPR. 20,000.00",
    "NPR. 25,000.00",
  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Center(child: Text("Welcome! Mausam"),),
      actions: [
        Icon(Icons.qr_code_2_outlined),
        SizedBox(
          width: 10,
        )
      ],
    ),
    body: CustomScrollView(
      slivers: [
        SliverList(delegate: SliverChildListDelegate([
          Stack(
            children: [
              Container(
                height: 200,
                width: 400,
                color: Colors.white,
              ),
              Container(
                height: 90,
                width: 400,
                color: Colors.red,
              ),
              Positioned(
                top: 10,
                right: 10,
                left: 10,
                child: Container(
                  height: 150,
                  width: 400,
                  child: Card(
                    child: Padding(padding: EdgeInsets.only(top: 5,left: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/playlist/p1.png"),
                            radius: 46,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 40,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sammunati Bachat Khata",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                            Row(
                              children: [
                                Text(
                                  "NPR. 1,00,999.35",
                                  style: TextStyle(
                                    color: Colors.red,fontSize: 20
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                            Text("281656484161548651"),
                          ],
                        ),)
                      ],
                    ),
                    ),
                  ),
                )),
            ],
          ),
        ])),
        SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(8.0),
          child: Row(
            children: [Icon(
              Icons.ac_unit_outlined,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Would you like to?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            ],
          ),),
        ),
        SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Card(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icons1[index],
            color: Colors.red,
            ),
            SizedBox(
              height: 10,
            ),
            Text(cardss[index])
          ],),
        ),
        childCount: 6),
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
         SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(10.0),
          child: Row(
            children: [Icon(
              Icons.ac_unit_outlined,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Last Transactions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),)],
          ),),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context, index) => Padding(padding: EdgeInsets.all(8.0),
         child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  color: Colors.red,
                  width: 10,
                  height: double.infinity,
                ),
                SizedBox(width: 10),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("CWDR/W"),
                  Text("28165648651",
                  style: TextStyle(color: Colors.grey),),
                  Text("10-06-2019",
                  style: TextStyle(color: Colors.grey),)],
                )),
                Text(transactions[index]),
              ],
            ),
          ),
         ),),
         childCount: 5))
      ],
    ),
  );  
   }
}