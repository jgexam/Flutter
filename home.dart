
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? var1 = 0;
  int? var2= 0;
  int? result = 0;
  void _add() {
    setState(() {
      result = var1! + var2!;
    });
  }
  void _sub() {
    setState(() {
      result = var1! - var2!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shop)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color : Colors.blue),
              accountName: Text("Tanveer"),
              accountEmail: Text("tanveer@tatta.com"),
              currentAccountPicture: Icon(Icons.person),
            ),
            const Divider(height: 1,),
            ListTile(
              onTap: (){},
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            const Divider(height: 1,),
            const SizedBox(height: 10,),
            const Divider(height: 1,),
            ListTile(
              onTap: (){},
              leading: const Icon(Icons.info),
              title: const Text("About"),
            ),
            const Divider(height: 1,),
          ],
        ),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              var1 = int.parse(value);
              print(var1);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter Num 1",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              var2 = int.parse(value);
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter Num 2",
              border: OutlineInputBorder(),
            ),
          ),


          OutlinedButton(onPressed: _add, child: const Text("+")),
          OutlinedButton(onPressed: _sub, child: const Text("-")),
          Text(' Reslt is $result'),
        ],
      ),
    );
  }
}
