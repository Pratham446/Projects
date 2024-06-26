import 'package:clone/info.dart';
import 'package:clone/mymessage.dart';
import 'package:clone/widgets/Sendermessage.dart';
import 'package:flutter/material.dart';

class chatlistt extends StatelessWidget {
  const chatlistt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
      width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context,index){
          if (messages[index]['isMe']==true) {
         return   Mymessage(message: messages[index]['text'].toString(), date: messages[index]['time'].toString() );
          }
        return Sendermessage(message: messages[index]['text'].toString(), date:messages[index]['time'].toString());
        }),
    );
  }
}