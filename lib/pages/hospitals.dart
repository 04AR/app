import 'package:flutter/material.dart';

class hospitals extends StatelessWidget {
  const hospitals({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("H O S P I T A L S"),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
