
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_card/widgets/back_card.dart';

class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double rotion =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen"),),

      body: Column(
        children: [
          Container(
                   height: 250,
            decoration: BoxDecoration(
             ),
           
            child:Transform(
  transform: Matrix4.identity()
    ..setEntry(3, 2, 0.0001)
    ..rotateY(pi * rotion),
    origin: Offset(MediaQuery.of(context).size.width / 2, 0),
              child: rotion <0.5? Card(
              color: Color.fromARGB(255, 241, 241, 241),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ),
                elevation: 8,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(children: <Widget> [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image(
                        height: 45,
                        width: 45,
                        image: AssetImage('images/3.png')),
                        
                    ),
                 
                    Text(style:TextStyle( shadows: [
                      Shadow(color: Colors.black12,offset: Offset(2,1)),
                
                    ], fontWeight: FontWeight.bold,  letterSpacing: 4,fontSize: 22), "2676 4964 7865 1973"),
                    SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("card-holder"),
                          Text("Abi-Atoo" ,style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expire"),
                          Text("10/24",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                  ],),
                ),
              ):card()
            ),
          ),
          Container(
            child: Column(children: [
              Slider(value: rotion, onChanged: (double value) {
                setState(() {
                  rotion = value;
                });

              })
            ],),
          )
          
        ],


      ),
   
  




    );
  }
}