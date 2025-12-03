
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
    required this.hope
  }
  );
} 

class HomePage extends StatelessWidget{
  HomePage({super.key});

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
              leading:const Icon(Icons.person,size:50,color:Colors.blue),
              title: Text(member.name),
              subtitle: Text(member.birthday),
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>DetailPage(
                      name:member.name,
                      birthday:member.birthday,
                      hope:member.hope,
                    )
                  )
                );
              }

            )
          );


        },
        
      )
    );

  }
}

class DetailPage extends StatelessWidget{
  final String name;
  final String birthday;
  final String hope;

  const DetailPage({
    super.key,
    required this.name,
    required this.birthday,
    required this.hope,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(name)),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name:$name",style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            Text("Birthday:$birthday",style: const TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            Text("Hope:$hope",style: TextStyle(fontSize: 18),)
          ],
        )
      )
    );
    
  }

}