import 'package:flutter/material.dart';
import 'app_widgets.dart';
import 'taskpage_2.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: 24.0,

          ),
          child: Stack(
            children: [ Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 25.0, top: 30.0
                    ),
                    child: Image.asset('assets/images/clock_2.jpg'),
                    width: 80,
                    height: 60,

                  ),
                ),
            Expanded(
              child: ListView(
                children: [
                  TaskCardWidget("Get Started", 'Click here to open up your to do list!'),

                ],
              ),
            )


              ],
            ),
          Positioned(
            bottom: 25.0,
            right: 0.0,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tasks() ),
                );
              },

              child: Container(
                width: 60,
                height: 60,
                child: Image.asset('assets/images/add_icon.png.png'),
              ),
            ),
          )

            ],
          ),
        ),
      ),
    );
  }
}


