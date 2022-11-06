import 'package:flutter/material.dart';
import 'package:testapp/widgets/text_field_pass.dart';
import 'widgets/text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Create a new account'),
                const SizedBox(
                  height: 20,
                ),
                NewWidgetField(
                  labelText: "NAME",
                  prefixIcon: Icon(Icons.person),
                ),
                NewWidgetField(
                  labelText: 'EMAIL',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
                NewWidgetField(
                  labelText: "PHONE",
                  prefixIcon: Icon(Icons.phone),
                ),
                const TextFieldPassWid(
                  labelText: 'Password',
                ),
                const TextFieldPassWid(
                  labelText: 'Confirm Password',
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
                      'CREATE ACCOUNT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have a account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('login');
                      },
                      child: const Text(
                        'Login',
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
