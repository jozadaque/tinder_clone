import 'package:flutter/material.dart';
import 'package:tinder_clone/text_app.dart';

import 'access_button.dart';
import 'components/text_trouble_access.dart';

void main() {
  runApp(const MyHomeApp());
}

class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.pink,
            elevation: 0,
            child: const Icon(Icons.arrow_back_ios_new),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniStartTop,
          backgroundColor: Colors.pink,
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Image.asset('assets/images/logo.png', width: 200),
                const SizedBox(height: 60),
                const TextApp(),
                const SizedBox(height: 40),
                const AccessButton(),
                const SizedBox(height: 40),
                const TextTroubleSign(label: 'Troble Signing In?'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
