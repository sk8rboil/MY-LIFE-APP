// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MY LIFE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              'HOMEPAGE',
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('login_page');
                },
                child: Text('LoginPage')),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
