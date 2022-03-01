import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String ? title;
  final String ? description;
  TaskCardWidget([this.title , this.description]);

  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0,),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 24.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20.0)
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(

            title ?? "(Unnamed)",

            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,),
            child: Text(
              description ?? 'No description Added',
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF055A6F),
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
class TodoWidget extends StatelessWidget {
  final String? text;
   bool isdone = false;
  TodoWidget(@required this.isdone, [this.text]);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,

      ),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(
              right: 10,
            ),
            decoration: BoxDecoration(
              color: isdone ? Colors.white70 :Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: isdone ? null : Border.all(
                color: Color(0xFF868290),
                width: 1.5,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0, bottom: 0),
              child: Image.asset('assets/images/dot2.png'),
            ),
          ),
          Text(
            text ?? 'Unnamed Task',
          style: TextStyle(
            color: isdone ?  Colors.black  : Color(0xFF055A6F) ,
            fontSize: 16.0,
            fontWeight:  isdone ? FontWeight.bold : FontWeight.w500,

          ),),
        ],
      ),
    );
  }
}
