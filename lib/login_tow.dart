import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginTow extends StatefulWidget {
  const LoginTow({Key? key}) : super(key: key);

  @override
  State<LoginTow> createState() => _LoginTowState();
}

class _LoginTowState extends State<LoginTow> {
  postAuth() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });
    var url = 'https://restful-booker.herokuapp.com/auth';
    var res = await http.post(
      Uri.parse(url),
      body: json.encode({"username": username, "password": password}),
      headers: {'Content-Type': 'application/json'},
    );
    var resbody = jsonDecode(res.body);
    saveShared('token', resbody['token']);
    Navigator.of(context).pop();

    return resbody;
  }

  saveShared(key, value) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString(key, value);
    Navigator.of(context).pushReplacementNamed('whatsup');
  }

  getShared() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final token = pref.getString('token');
    if (token != null) {
      Navigator.of(context).pushReplacementNamed('whatsup');
    }
  }

  sendValidate() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      postAuth();
      print('Valid');
    } else {
      print('Not Valid');
    }
  }

  @override
  void initState() {
    getShared();
    super.initState();
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? username, password;
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formstate,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 100.0),
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
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onSaved: (newValue) {
                        username = newValue;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'يجب ان يحتوي على علامة @';
                        }
                        return null;
                      },
                      autocorrect: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 10.0),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 12),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      onSaved: (newValue) {
                        password = newValue;
                      },
                      validator: (value) {
                        if (value!.length < 8) {
                          return 'يجب ان يكون عدد الاحرف او الارقام اكثر من 8';
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: isHidden,
                      autocorrect: true,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 10.0),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(fontSize: 12),
                        prefixIcon: const Icon(Icons.vpn_key),
                        suffixIcon: IconButton(
                          onPressed: () {
                            if (isHidden == true) {
                              isHidden = false;
                            } else {
                              isHidden = true;
                            }
                            setState(() {});
                          },
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                      ),
                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15),
                          textStyle: const TextStyle(fontSize: 20),
                          primary: Colors.teal),
                      onPressed: () {
                        sendValidate();
                        // print(crtEmail.text);
                        // print(crtPassword.text);
                      },
                      child: const Text('Login'),
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
                          // Navigator.of(context).pushReplacementNamed('signUp');
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
      ),
    );
  }
}
