
import 'dart:developer';

import 'package:flutter/material.dart';

void main(){
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget{
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("Deep dive in the Row and Column"),),
        body:const ExamplePage(),
      )
    );
  }
}

class ExamplePage extends StatelessWidget{
  const ExamplePage({super.key});

  Widget coloredBox(String label,{Color color = Colors.blue, double w = 80, double h = 40}) {
    return Container(
      width:w,
      height:h,
      alignment: Alignment.center,
      color: color,
      child: Text(label,style: const TextStyle(color:Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child :Column(
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          const Text('1) Row main axis alignment (horizontal)',style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              coloredBox("A"),
              coloredBox("B"),
              coloredBox("C"),
            ],
          ),
          const SizedBox(height:18),

          const Text('2) Column main axis alignment (vertical) & stretch',style: TextStyle(fontWeight: FontWeight.bold),),
          Container(
            color:Colors.grey.shade200,
            child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                coloredBox('Wide1',w:double.infinity,color:Colors.teal,h:40),
                const SizedBox(height:6),
                coloredBox("Wide2",w:double.infinity,color:Colors.indigo,h:40),
              ],
            ),
          ),
          const SizedBox(height:18),

          const Text('3) Expanded distributes remaining space',style: TextStyle(fontWeight: FontWeight.bold),),
          Container(
            height:80,
            color: Colors.grey.shade100,
            child:Row(
              children:[
                Expanded(flex:1, child:coloredBox("Exp 1",color:Colors.purple)),
                Expanded(flex:2, child: coloredBox('Exp 2 (flex=2)', color: Colors.orange)),
              ]
            )
          ),

        ],
      )

    );

    
  }
}