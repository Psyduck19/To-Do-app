import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Home.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        backgroundColor: Colors.lightGreenAccent,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(bottom: 10,),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(20),

                  child: Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('KEEP TRACK OF YOUR TASKS',

                        style: TextStyle(
                            color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800
                      ),
                      ),
                    ),
                    width: 320,
                    height: 60,


                  ),
                ),
              ),
              Container(

                margin: EdgeInsets.only(top: 100),
                child: Image.asset('assets/images/clock_2.jpg'),
                width: 170,
                height: 170,
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 50, left: 80, right: 80),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.lightBlueAccent,
                      child: Center(
                        child: Text('MANAGE MY TIME', style: TextStyle(color: Colors.white70,fontSize: 20, fontWeight: FontWeight.w800),),
                      ),
                    ),

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
