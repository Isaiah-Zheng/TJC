
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
      home:HomePage()
    );
  }
}

class Member{
  final String name;
  final String birthday;
  final String hope;

  Member({
    required this.name,
    required this.birthday,
    required this.hope,
  });
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();  
}

class _HomePageState extends State<HomePage>{
  List<Member> members = [];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Members"),),
      body:ListView.builder(
        itemCount:members.length,
        itemBuilder:(context,index){
          final member = members[index];
          return ListTile(
            title: Text(member.name),
          );
          
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            members.add(Member(
              name:"New Member",
              birthday:"01/01/01",
              hope:"New hope message",
            ));

            
          });

        },
        child:Icon(Icons.add)

      ),
    );
  
  }
  
}
