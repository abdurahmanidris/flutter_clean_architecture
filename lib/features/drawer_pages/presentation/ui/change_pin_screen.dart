import 'package:flutter/material.dart';

class ChangePINScreen extends StatefulWidget {
  const ChangePINScreen({Key? key}) : super(key: key);

  @override
  State<ChangePINScreen> createState() => _ChangePINScreenState();
}

class _ChangePINScreenState extends State<ChangePINScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change PIN Screen'),
      ),
      body: const Center(
        child: Column(
          children: [Text("This is Change PIN Screen ")],
        ),
      ),
    );
  }
}
