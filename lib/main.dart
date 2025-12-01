
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("True Jesus Church")),
      body:Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,//這個你要自己做一個實驗
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>PageA()),
                  );
              },
              child:Text("Isaiah"),
            ),
            SizedBox(height:20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=>PageB())
                );
              },
              child: Text("Erik"),
            )


          ],
        )
        ),
      );
    
    
    
    
  }
}

class PageA extends StatelessWidget{
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Isaiah")),
      body:Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "this is Isaiah",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height:20),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);

              },
              child: Text("back"),
            ),
          ],
        )
      )


    );
  }
}

class PageB extends StatelessWidget{
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Erik")),
      body:Center(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "this is Erik",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height:20),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child:Text("back")
            )

          ],
        )
      )
    );
  }
}