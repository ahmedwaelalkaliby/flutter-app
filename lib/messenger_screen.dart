import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_item.dart';
import 'package:flutter_application_1/story_item.dart';

class Users {
  String? name;
  String? message;
  String? time;
  Users({this.name, this.message, this.time});
}

class MessengerScreen extends StatelessWidget {
  MessengerScreen({super.key});

  List<Users> users = [
    Users(
      name: "Ahmed wael",
      message: "Hi how are you?",
      time: "9:00 AM",
    ),
    Users(name: "kabaka",
     message: "we will go to alaa?",
     time: "5:45 pM"),
    Users(name: "ToTo",
     message: "call Hamada mazika.",
     time: "9:30 pM"),
    Users(
      name: "Yousef 5odier",
      message: "Good morning!",
      time: "7:50 AM",
    ),
    Users(
      name: "Abdo ayad",
      message: "see you at saed street?",
      time: "09:15 PM",
    ),
    Users(
      name: "7okaa",
      message: "i'm in mazzika.",
      time: "6:20 PM",
    ),
    Users(
      name: "Hamza",
      message: "Can you send me the document?",
      time: "8:00 AM",
    ),
    Users(name: "7ma Samir",
     message: "Where are you?",
     time: "5:30 PM"),
    Users(
      name: "Youssef sami",
      message: "I'm in the gym.",
      time: "8:45 PM",
    ),
    Users(
      name: "basem samra",
      message: "Call me when you're free.",
      time: "10:15 PM",
    ),
    Users(name: "7okaa", message: "i'm in mazzika.", time: "6:20 PM"),
    Users(
      name: "Hamza",
      message: "Can you send me the document?",
      time: "8:00 AM",
    ),
    Users(name: "7ma Samir",
     message: "Where are you?",
     time: "5:30 PM"),
    Users(name: "Youssef sami", message: "I'm in the gym.", time: "8:45 PM"),
    Users(
      name: "basem samra",
      message: "Call me when you're free.",
      time: "10:15 PM",
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 0),
          child: CircleAvatar(
            child: Icon(Icons.person_2),
            backgroundColor: Colors.grey.shade200,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              spacing: 5,
              children: [
                CircleAvatar(
                  child: Icon(Icons.camera_alt),
                  backgroundColor: Colors.grey.shade200,
                ),
                CircleAvatar(
                  child: Icon(Icons.edit_sharp, color: Colors.black),
                  backgroundColor: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: Icon(Icons.search),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return StoryItem(user: users[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemCount: 10,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ChatItem(user: users[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10);
                },
                itemCount: users.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
