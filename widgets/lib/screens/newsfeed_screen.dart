import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "username": "Alex Santos",
      "status": "Flutter Development Today!",
      "likes": "400",
      "comments": "30",
      "shares": "25",
    },
    {
      "username": "Steve Bar",
      "status": "Create new project",
      "likes": "120",
      "comments": "24",
      "shares": "8",
    },
    {
      "username": "Mark Dane",
      "status": "Learning widjet",
      "likes": "210",
      "comments": "29",
      "shares": "12",
    },
    {
      "username": "Tom Bumber",
      "status": "Make Flutter",
      "likes": "310",
      "comments": "14",
      "shares": "4",
    },
    {
      "username": "Chopper Moss",
      "status": "Understand Flutter Code",
      "likes": "270",
      "comments": "13",
      "shares": "7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}