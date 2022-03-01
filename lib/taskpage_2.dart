import 'package:flutter/material.dart';
import 'app_widgets.dart';
class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Container(

          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      children: [
                        InkWell(

                          onTap: (){

                            Navigator.pop(context);

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset('assets/images/arrow.png'),
                          ),
                        ),
                        Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText:  "Title",
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF055A6F),
                              ),
                            ),
                        )
                      ],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Description",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 20, bottom: 8, left: 25),
                      ),
                    ),
                  ),
                  TodoWidget(true, 'Completed Task'),
                  TodoWidget(true, 'Completed Task'),
                  TodoWidget(false),
                  TodoWidget(false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
