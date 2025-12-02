
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage()
    )
  }
}

class Member{
  final String name;
  final String birthday;
  final String hope;

  Member({required this.name,required this.birthday,required this.hope})
} 

class HomePage extends StatelessWidget{
  const HomePage({super.key})

  final List<Member> members =  [        //tell me in detail
    Member(
      name: "Isaiah Zheng",
      birthday: "01/01/07",
      hope: "Hope I can get baptized one day",

    ),
    Member(
      name: "Mary Lee",
      birthday: "05/05/08",
      hope: "Hope to grow in faith",
    ),
    Member(
      name: "John Tan",
      birthday: "10/10/06",
      hope: "Hope to serve the church",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Members")),
      body:ListView.builder(
        itemCount: members.length,
        itemBuilder: (context,index){
          final member = members[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child:ListTile(
              leading:
            )
          )


        },
        
      )
    );
  }
}