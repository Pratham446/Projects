import 'package:clone/colors.dart';
import 'package:clone/info.dart';
import 'package:clone/widgets/chatlist.dart';
import 'package:clone/widgets/mobilechatlist.dart';
import 'package:flutter/material.dart';
//ListTile is a useful widget provided by the Flutter framework that is typically 
//used to display a single row with leading and trailing widgets,along with title and subtitle 

//listview.builder return scrollable list of widgets

//itembuilder- This function is called for each item in the list
// It should return the widget for the item at the given index

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10),
    child:  SizedBox(height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
              itemCount: info.length,
              itemBuilder: (context,index){
             return Padding(
               padding: const EdgeInsets.only(bottom: 1),
               child: Column(
                 children: [
                   InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>chatlisttu()));
                   },
                     child: ListTile(
                     title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18),),
                     subtitle: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 15),),
                     leading: CircleAvatar(radius: 30, backgroundImage: NetworkImage(info[index]['profilePic'].toString()),),
                     trailing: Text(info[index]['time'].toString()),
                     ),
                   ),
                   Divider(color: dividerColor),
                 ],
               ),
             );
              }),
    ),
        
      );
  }
}