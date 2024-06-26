import 'package:clone/colors.dart';
import 'package:clone/info.dart';
import 'package:clone/mymessage.dart';
import 'package:clone/widgets/Sendermessage.dart';
import 'package:flutter/material.dart';

class chatlisttu extends StatelessWidget {
  const chatlisttu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: appBarColor,
      title: Text("Pratham Darji"),centerTitle: true,
      actions: [
        Row(children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
           IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],)
      ],
    ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
      
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    if (messages[index]['isMe'] == true) {
                      return Mymessage(
                          message: messages[index]['text'].toString(),
                          date: messages[index]['time'].toString());
                    }
                    return Sendermessage(
                        message: messages[index]['text'].toString(),
                        date: messages[index]['time'].toString());
                  }),
            ),
          ),
          Container(
            color: chatBarMessage,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.emoji_emotions,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    )),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: searchBarColor,filled: true,
                        hintText: "Enter Some Text",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.send,
                    size: 23,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
