// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_life_app/controllers/login_controller.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final controller = Get.put((LoginController()));
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: controller.username,
                      decoration: InputDecoration(
                        labelText: 'username',
                      ),
                      keyboardType: TextInputType.name,
                    ),
                    TextFormField(
                      controller: controller.email,
                      decoration: InputDecoration(
                        labelText: 'email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFormField(
                      controller: controller.password,
                      decoration: InputDecoration(
                        labelText: 'password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    TextFormField(
                      controller: controller.confirmpassword,
                      decoration: InputDecoration(
                        labelText: 'confirmpassword',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text('login')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
