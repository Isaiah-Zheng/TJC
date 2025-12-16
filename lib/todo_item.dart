import 'package:flutter/material.dart';
import 'package:my_first_app/color.dart';

class TodoItem extends StatelessWidget{
  const TodoItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListTile(
        onTap: () {
          
        },
        leading: Icon(
          Icons.check_box,
          color:tdBlue,
        ),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title:(Text(
          'This is a ToDo item',
          style:TextStyle(
            fontSize:16.0,
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
          ),
        )),
        trailing: Container(
          height:35,
          width:35,
          decoration: BoxDecoration(
            color:tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          
        )
      ),
    );
  }
}