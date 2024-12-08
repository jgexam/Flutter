import 'package:flutter/material.dart';
import 'package:flutter_application_1/cancellation_order.dart';
import 'package:flutter_application_1/ongoing_order.dart';
import 'package:flutter_application_1/success_order.dart';

class OrederScreen extends StatefulWidget {
  const OrederScreen({super.key});

  @override
  State<OrederScreen> createState() => _OrederScreenState();
}

class _OrederScreenState extends State<OrederScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Order Screen"),
          backgroundColor: Colors.cyan,
          bottom: const TabBar(
            labelColor: Colors.white,
            dividerColor: Colors.cyanAccent,
            indicatorColor: Colors.blue,
            dividerHeight: 2.0,
            tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text:"Chats",),
             Tab(
              icon: Icon(Icons.person),
              text:"Status",),
             Tab(
              icon: Icon(Icons.call),
              text:"Calls",),
          ]),), 
        body: const TabBarView(children: [
          OnGoingOrders(),
          SuccessScreeen(),
          CancellationScreen()
        ]), 
      ),
    );
  }
}