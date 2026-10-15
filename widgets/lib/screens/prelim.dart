import 'package:flutter/material.dart';

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Text("Prelim Exam",style: TextStyle(color: Colors.blue)),

          Row(children: [
            SizedBox(width: 20,),    
            Text("Dexter G. Reyes"),
          ],),

          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
            child: Center(child: Text("BOX 1"),),
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