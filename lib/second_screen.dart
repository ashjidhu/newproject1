import 'package:flutter/material.dart';
import 'package:newproject1/first_screen.dart';
class Login extends StatelessWidget {
  Login({super.key});
  final passwordController = TextEditingController();
  final myController = TextEditingController();
  final String value;
  Login({required this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Center(),
              Text(
                'Hello.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Text(
                'Welcome back!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Sign in',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
              ),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email or Username',
                ),
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.remove_red_eye,
                        ))),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('forgot password?')),
              SizedBox(
                width: 300,
                child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.yellow,
                      padding: const EdgeInsets.all(16.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      print(myController.text);
                      print(passwordController.text);
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Dart(),));},
                    child: const Text('Login')),
              ),
            ],
          ),
        ));
  }
}