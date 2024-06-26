import 'package:clone/colors.dart';
import 'package:flutter/material.dart';

class chatbar extends StatelessWidget {
  const chatbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width,
      color: appBarColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
           radius: 30,
            backgroundImage:NetworkImage( 'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

            ],
          )
        ],
      ),
    );
  }
}