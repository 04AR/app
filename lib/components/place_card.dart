import 'package:flutter/material.dart';
import 'package:app/decor_var.dart';

class place_card extends StatelessWidget {
  const place_card({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      elevation: elevation,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ Image.network(
          'https://images.unsplash.com/photo-1607962837359-5e7e89f86776?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
          height: MediaQuery.sizeOf(context).height * 0.20,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const ListTile(
          isThreeLine: true,
          title: Text('T I T L E'),
          subtitle: Text('s u b t i t l e'),
        )
      ]),
    );
  }
}
