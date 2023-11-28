// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:localdb/stulogin_page/mybutton.dart';
import 'package:localdb/stulogin_page/mytextfield.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(134, 120, 234, 202),
      body: SafeArea(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'S T U D E N T  L O G I N',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              //name field
              Mytextfield(
                  Controller: usernameController,
                  hinttext: 'username',
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      // return 'please enter the username';
                    }
                    return null;
                  }),

              SizedBox(
                height: 50,
              ),
              //password field
              Mytextfield(
                  Controller: passwordController,
                  hinttext: 'password',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      //return 'please enter the password';
                    }
                    return null;
                  },
                  ),
              SizedBox(
                height: 50,
              ),
              //my button
              Mybutton(
                ontap: () {
                  if (usernameController.text == "teja" &&
                      passwordController.text == "abcdef") {
                    Navigator.pushNamed(context, '/Home_stu');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login Successfully',
                        style: TextStyle(color: Colors.white),),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Invalid Credentials',
                      style: TextStyle(color:Colors.white),

                      )),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}









// Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Center(
//                   child: GestureDetector(
//                     child: ElevatedButton(
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                           // Navigate the user to the Home page
//                           if (usernameController.text == "username" &&
//                               passwordController.text == "abcdef") {
//                                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => BottomAppBar(),
//                       ),
//                                   );
//                                 } else {
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Invalid Credentials')),
//                     );
//                                 }
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(content: Text('Please fill input')),
//                             );
//                           }
//                         },
//                         child: const Text('login')),
//                   ),
//                 ),
//               )