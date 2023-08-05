import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String changeString = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Welcome"),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {},
                );
              },
              child: const Text("Click"),
            )
          ],
        ),
      ),
    );
  }
}
