
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
          child: Container(
            padding: EdgeInsets.all(20),
            width: 300,
                                        //maybe it means that height is infinite
            decoration: BoxDecoration(
              color:Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              

              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>DetailPage(
                          name:"Isaiah Zheng",
                          birthday:"01/01/07",
                          hope:"Hope i can get baptized on day,become a part of Jesus Christ"


                        )
                      )
                    );
                  }

                ),
                Row(
                  children: [
                    Icon(Icons.person,size: 50,color:Colors.blue),
                    SizedBox(width:15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              Text(
                                "Isaiah Zheng",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  letterSpacing: 1
                                ),
                              ),
                              Spacer(

                              ),
                              Text(
                                "24/11/25",
                                style: TextStyle(fontSize: 13,color: Colors.grey),
                              ),
                              
                            


                            ],
                          
                          ),
                          SizedBox(height:5),

                          Text(
                            "Hallelujah,Jesus loves you forever.",
                            style: TextStyle(
                              fontSize: 13
                            ),

                          )
                        ],
                        

                      )
                      )

                  ]
                ),
                
              ],


            ),
          
          ),


          
          
          
        )
      )
    ); 
  } 
}  
                
class DetailPage extends StatelessWidget {
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
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(title:Text(name)),
        body:Padding(
          padding:const EdgeInsets.all(20),
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text("Name: $name", style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Text("Birthday: $birthday", style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text("Hope: $hope", style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
      );
    }


  
}