import 'package:clone/colors.dart';
import 'package:clone/widgets/chatlist.dart';
import 'package:clone/widgets/contact.dart';
import 'package:clone/widgets/webchatbar.dart';
import 'package:clone/widgets/webprofilebar.dart';
import 'package:flutter/material.dart';

class web extends StatelessWidget {
  const web({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Webprofilebar(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: searchBarColor,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.search)),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Search or start a new chat"),
                            )
                          ],
                        ),
                      ),
                    ),
                    Contact()
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
              child: Column(
                children: [
                  chatbar(),
                  Expanded(child: chatlistt()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
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
                                  fillColor: searchBarColor,
                                  hintText: "Enter Some Text",
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.send,size: 30,),
                              )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
