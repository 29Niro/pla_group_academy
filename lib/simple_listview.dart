import 'package:flutter/material.dart';

class SimpleListview extends StatelessWidget {
  const SimpleListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple List view"),
      ),
      body: ListView(
        children: List.generate(20, (index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Person ${index + 1}'),
            subtitle: Text('subtitle of person ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              print('Tapped on person ${index + 1}');
            },
          );
        }),
      ),
    );
  }
}
