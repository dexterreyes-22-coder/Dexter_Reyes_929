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
          Text("Hello World",style: TextStyle(color: Colors.blue,)),
          SizedBox(height: 50,),
          Text("Your Good"),

          Row(children: [
            Text("Hey world"),
            SizedBox(width: 50,),
            Text("see you")

          ],),

          Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            child: Center(child: Text("Hello Word")),
          ),
          
        ],
      ),
    );
  }
}
