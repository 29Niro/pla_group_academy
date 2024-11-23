import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/profile_pic.jpg"),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.green, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              title: Text(
                "Name",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Text(
                "Niro",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.green,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 214, 214, 214),
            ),
            const ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.grey,
              ),
              title: Text(
                "About",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Text(
                "At Work",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.green,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 214, 214, 214),
            ),
            const ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              title: Text(
                "Phone",
                style: TextStyle(color: Colors.grey),
              ),
              subtitle: Text(
                "+94775139934",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
