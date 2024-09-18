import 'package:flutter/material.dart';

class RegistartionPage extends StatefulWidget {
  const RegistartionPage({super.key});

  @override
  State<StatefulWidget> createState() => Registartion();
}

class Registartion extends State {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
        title: const Text("Registration"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 100.0,
                child: CircleAvatar(
                  radius: 95,
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/018/930/572/non_2x/youtube-logo-youtube-icon-transparent-free-png.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  hintText: "abc@gmail.com",
                  prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? a) {
                    setState(() {
                      isChecked = a!;
                      print(isChecked);
                    });
                  },
                  activeColor: Colors.green,
                  hoverColor: Colors.redAccent,
                ),
                const Text("I here by Accept Terms And Conditions")
              ],
            ),
            //OutlinedButton(onPressed: () {}, child: Text("Register")),
            Visibility(
              visible: isChecked,
              // ignore: prefer_const_constructors
              child: OutlinedButton(onPressed: () {}, child: Text("Register")),
            )
          ],
        ),
      ),
    );
  }
}
