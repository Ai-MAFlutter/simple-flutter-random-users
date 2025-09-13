import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  String image;
  String name;
  String email;
  String phone;
  int age;
  UserDetails({
    super.key,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          children: [
            Image.network(image),
            SizedBox(height: 40),
            Text(name,style: TextStyle(fontSize: 20),),
            SizedBox(height: 40),
            Text(email,style: TextStyle(fontSize: 20),),
            SizedBox(height: 40),
            Text(phone,style: TextStyle(fontSize: 20),),
            SizedBox(height: 40),
            Text("$age",style: TextStyle(fontSize: 20),),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
