import 'package:clone/colors.dart';
// import 'package:clone/info.dart';
import 'package:flutter/material.dart';

class Sendermessage extends StatelessWidget {
final String message;
final String date;
  const Sendermessage({super.key ,required this.message,required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,child: ConstrainedBox(constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width-45,
    
    ),child: Card(
      elevation: 1,
      shape: RoundedRectangleBorder(),
      color: senderMessageColor,
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Stack(children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 30,top: 5,bottom: 20),child: 
        Text(message,style: TextStyle(fontSize: 15),),),
        Positioned(bottom: 2,right: 10,
          child: Row(
          children: [
Text(date,style: TextStyle(fontSize: 13,color: Colors.white60),),
SizedBox(height: 5,),
const Icon(Icons.done_all,size: 20,color: Colors.white60,),
          ],
        ))
        
      ],),
    ),),);
  }
}