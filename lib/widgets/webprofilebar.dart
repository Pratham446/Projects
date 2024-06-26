import 'package:clone/colors.dart';
import 'package:flutter/material.dart';

class Webprofilebar extends StatelessWidget {
  const Webprofilebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: dividerColor)),
        color: webAppBarColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(radius: 35,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsy3zU6gHCYIgHQ1hKv1ASWQ62U_Jpe3Wdfg&s'),
          ),
        )
      ,  Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.comment)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))

          ],
        )
      ],),

    );
  }
}