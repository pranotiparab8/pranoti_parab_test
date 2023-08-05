import 'package:flutter/material.dart';

import 'second.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Username";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Username",
              hintText: "Username",
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Password";
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Password",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              }
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
