import 'package:flutter/material.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        backgroundColor: Colors.pink[500],
      ),
      // body: ListView.builder(itemBuilder: (context,position){
      //   return Card(
      //     surfaceTintColor: Colors.cyan,
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Text("Hello : ${position +1}"),
      //     ),
      //     elevation: 5,
      //     shadowColor: Colors.cyanAccent,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(5),
      //     ),
      //   );
      // },itemCount: 20),
      body: ListView.separated(separatorBuilder: (context,position){
          return const Divider(
            color: Colors.cyanAccent,
            height: 1.0,
          );
      }, itemBuilder: (context,position){
         return const ListTile(
          leading: CircleAvatar(backgroundColor: Colors.cyan,),
          title: Text("WhatsApp"),
          subtitle: Text("You have 3 messages"),
          trailing: Column(children: [Text("10.45 Am"), Icon(Icons.check,size: 20.0,)],),
        );
      }, itemCount: 5),
    );
  }
}