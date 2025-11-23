
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text("True Jesus Church"),
        ),

        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,size:50,color:Colors.blue),

              SizedBox(width:20),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text("Hallelujah",style: TextStyle(color: Colors.black),),
                  Text("Jesus Love U",style: TextStyle(color: Colors.black),)
                ],
              ),

            ],
          ),


        )
      )
    );
  } 
}  
                
