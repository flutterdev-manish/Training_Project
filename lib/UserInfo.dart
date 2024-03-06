import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({required this.name,required this.email,required this.mobile,required this.password, super.key});


  final String name;
  final String email;
  final String mobile;
  final String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
        title: Text("User Info",
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            Text(name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,fontWeight: FontWeight.bold
            ),),
            Text(email,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.bold
              ),),
            Text(mobile,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.bold
              ),),Text(password,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,fontWeight: FontWeight.bold
              ),),
          ],
        ),
      ),
    );
  }
}
