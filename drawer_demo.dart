import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),],  
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              onDetailsPressed: (){},
              accountName: const Text("JG University"), 
              accountEmail: const Text("mca@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage("https://static.vecteezy.com/vite/assets/photo-masthead-375-BoK_p8LG.webp"),
              ),
              decoration: const BoxDecoration(color: Colors.pink),),
              const SizedBox(height: 20.0,),
              const Divider(height: 1.0,),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>const HomeScreen()));
                },
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              const Divider(height: 1.0,),
               const SizedBox(height: 20.0,),
              const Divider(height: 1.0,),
              ListTile(
                onTap: (){},
                leading: const Icon(Icons.shopping_bag),
                title: const Text("Order"),
              ),
              const Divider(height: 1.0,),
          ],
        ),
      ),
    );
  }
}