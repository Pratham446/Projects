import 'package:clone/colors.dart';
import 'package:clone/widgets/contact.dart';
import 'package:flutter/material.dart';

class mobile extends StatelessWidget {
  const mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(elevation: 0,
            backgroundColor: appBarColor,
            title: Text(
              "Whatapp",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
            bottom: TabBar(indicatorWeight: 4,
                 
                indicatorColor: tabColor,
                unselectedLabelColor: Colors.grey,
                dividerColor: Colors.white,
                labelColor: tabColor,
                labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
          ),body: Contact(),
          floatingActionButton:
           FloatingActionButton(onPressed: (){

          },backgroundColor: tabColor,child: Icon(Icons.comment),),
        ));
  }
}
