import 'package:flutter/material.dart';
import 'package:my_first_app/color.dart';
import 'package:my_first_app/todo_item.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: Container(
        padding:EdgeInsets.symmetric(
          horizontal:20.0,
          vertical: 15.0,


        ),
        child:Column(
          children: [
            searchBox(),
            Expanded(
              child:ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top:50.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        'All ToDos',
                        style: TextStyle(
                          fontSize:30.0,
                          fontWeight: FontWeight.w500,
                          color: tdBlack,
                        ),
                      ),
                      
                    ),
                    TodoItem(),

                ],
              ),
            ),
          ],

        ),
      )
      
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

Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20.0,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight:20.0,
            minWidth:25.0,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: tdGrey,
          ),
        ),
      ),
    );
  }


