import 'package:flutter/material.dart';


class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {

  int _position = 0;

  void SelectedItem(int index){
      setState(() {
        _position=index;
      });
  }

  static List<Widget> name=[
     Card(elevation: 10.0,child: TextButton(onPressed: (){},child: Text("Home"),),color: Colors.blue,),
     Text("Profile"),
     Text("Search")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(child: name.elementAt(_position),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      ],backgroundColor: Colors.cyan,
      currentIndex: _position,
      onTap: SelectedItem,
      ),
    );
  }
}