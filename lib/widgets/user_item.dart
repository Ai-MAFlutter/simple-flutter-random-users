import 'package:flutter/material.dart';

import '../screens/user_details.dart';


class UserItem extends StatelessWidget {
  String image;
  String name;
  String email;
  String phone;
  int age;
  UserItem({
    super.key,
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetails(
              image: image,
              name: name,
              email: email,
              phone: phone,
              age: age,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(child: Image.network(image)),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(name), Text(email)],
            ),
          ],
        ),
      ),
    );
  }
}

