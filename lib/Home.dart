import 'package:flutter/material.dart';
import 'package:my_first_app/color.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        padding:EdgeInsets.symmetric(horizontal:20.0),
        child:Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white
                borderRadius: BorderRadius.circular(20),
              ),
              child:TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon( 
                    Icons.search,
                    color: tdBlack,
                    size:20,
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                  prefixIconConstraints: BoxConstraints(
                    minHeight:20,
                    minWidth:25,
                  ),
                  
                  hintText: 'Search',
                  border: InputBorder.none, 
              ),

            )
          ],

        ),
      )
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.menu,
        color: tdBlack,
        size: 30.0,),

        Container(
          height:40,
          width:40,
          child:ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/avatar.png'),
            
          ),
        ),
        
      ],)

    );
  }
}




