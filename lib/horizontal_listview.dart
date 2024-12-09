import 'package:flutter/material.dart';

class HorizontalListview extends StatelessWidget {
  const HorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal List"),
      ),
      body: Container(
        height: 200.00,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: 120.00,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Item ${index + 1}')),
              );
            }),
      ),
    );
  }
}
