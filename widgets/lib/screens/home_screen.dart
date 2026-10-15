import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Text("Prelim Exam",style: TextStyle(color: Colors.blue,)),

          Row(children: [
            SizedBox(width: 290,),
            Text("Dexter G.Reyes"),
          ],),

          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("BOX 1")),
          ),

          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 150,),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(child: Text("BOX 2"),),
            ),

            SizedBox(width: 50,),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(child: Text("BOX 3"),),
            ),
          ],),
          
        ],
      ),
    );
  }
}
