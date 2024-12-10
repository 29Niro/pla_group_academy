import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  CustomListview({super.key});

  final List<Map<String, String>> friendRequests = [
    {
      'name': 'John Doe',
      'mutualFriends': '5 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=1'
    },
    {
      'name': 'Jane Smith',
      'mutualFriends': '2 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=2'
    },
    {
      'name': 'Alice Johnson',
      'mutualFriends': '10 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=3'
    },
    {
      'name': 'Bob Brown',
      'mutualFriends': '8 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=4'
    },
    {
      'name': 'Charlie Davis',
      'mutualFriends': '1 Mutual Friend',
      'image': 'https://i.pravatar.cc/150?img=5'
    },
    {
      'name': 'Diana Evans',
      'mutualFriends': '15 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=6'
    },
    {
      'name': 'Eve Wilson',
      'mutualFriends': '4 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=7'
    },
    {
      'name': 'Frank Harris',
      'mutualFriends': '20 Mutual Friends',
      'image': 'https://i.pravatar.cc/150?img=8'
    },
    {'name': 'Gee', 'mutualFriends': '7 Mutual Friends', 'image': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom List view"),
      ),
      body: ListView.builder(
          itemCount: friendRequests.length,
          itemBuilder: (context, index) {
            final friendRequest = friendRequests[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        minRadius: 50,
                        backgroundImage: friendRequest['image'] != null &&
                                friendRequest['image']!.isNotEmpty
                            ? NetworkImage(friendRequest['image']!)
                            : const AssetImage("assets/profile_pic.jpg"),
                            // condition ? function 1 : condition 2 ? function 2 : function 3
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(friendRequest['name']!),
                          Text(friendRequest['mutualFriends']!),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    backgroundColor: Colors.blue),
                                child: const Text(
                                  "Confirm",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    backgroundColor: Colors.grey),
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
