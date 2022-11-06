import 'package:flutter/material.dart';
import 'package:testapp/widgets/text_field_pass.dart';
import 'widgets/text_field.dart';

class Login extends StatefulWidget {
  const Login({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 60.0),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Sign to continue'),
                const SizedBox(
                  height: 20,
                ),
                NewWidgetField(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                ),
                const TextFieldPassWid(
                  labelText: 'Password',
                ),
                Container(
                  margin: const EdgeInsets.only(left: 240.0, top: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      top: 30.0, bottom: 30.0, left: 20, right: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.greenAccent),
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('signUp');
                      },
                      child: const Text(
                        'create a new accont',
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
