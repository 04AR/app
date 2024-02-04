import 'package:flutter/material.dart';
import 'package:app/decor_var.dart';
import 'package:app/components/place_card.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [

        SliverAppBar(
          title: Text("T I T L E"),
          expandedHeight: 200,
          elevation: 10,
          pinned: true,
          snap: false,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: ColoredBox(color: Colors.deepPurple),
            title: Text("SUB_TITLE"),
          ),
        ),

        SliverToBoxAdapter(
          child: place_card(),
        ),

        SliverGrid(
          delegate: SliverChildListDelegate.fixed([
            place_card(),
            place_card(),
            place_card(),
            place_card(),
          ]), 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.25))
      ],
    );
  }
}
