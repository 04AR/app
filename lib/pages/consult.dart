import 'package:flutter/material.dart';

class consult extends StatelessWidget {
  const consult({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("C O N S U L T"),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}