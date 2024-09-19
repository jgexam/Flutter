import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? user = '';
  String? pass = '';

  void _checkLogin(){
    
      if(user == 'user' && pass == '123'){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter Valid"), duration: Durations.short1,));
      }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 100,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                user = value;
              },
              decoration: const InputDecoration(
                hintText: "Enter Name",
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                pass = value;
              },
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Pas",
                labelText: "Pass ",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){}, child: const Text("Forget Pass"))
            ),
            const SizedBox(height: 20),

            OutlinedButton(onPressed:_checkLogin, child: const Text("Login")),
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const Register(),));
            }, child: const Text("Register")),
          ],
        ),
      ),
    );
  }
}
