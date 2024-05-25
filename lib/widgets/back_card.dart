import 'dart:math';

import 'package:flutter/material.dart';

class card extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(pi * 1),
      origin: Offset(MediaQuery.of(context).size.width / 2, 0),
      child: Container(
        
          height: 250,
          color: Colors.white,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            margin: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 32,),
                Container(
                  height: 40,
                  color: Colors.black87,
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      height: 20,
                      width: 200,
                      color: const Color.fromARGB(255, 131, 130, 130),
                    ),SizedBox(width: 32,),
                    Text("574",style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 12,),
                 Container(
                      height: 10,
                      width: 300,
                     color:  Color.fromARGB(31, 131, 127, 127)
                    ),    SizedBox(height: 12,),
                      Container(
                      height: 10,
                      width: 300,
                      color:  Color.fromARGB(31, 131, 127, 127)
                    ),     SizedBox(height: 12,), Container(
                      height: 10,
                      width: 300,
                      color:  Color.fromARGB(31, 131, 127, 127)
                    ),
              ],
            ),
      
          )
      ),
    );
  }
}
