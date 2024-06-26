import 'package:flutter/material.dart';
import 'package:app/decor_var.dart';
import 'package:app/pages/H_page.dart';

class place_card extends StatelessWidget {

  final String title;
  final double rating;
  final String address;
  final String url ;

  const place_card({super.key, required this.title, 
                               required this.rating, 
                               required this.address, 
                               this.url = "assets/images/max_hosp.jpg"});
  @override
  Widget build(BuildContext context) {
    
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(round),
      ),
      elevation: 2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ Image.asset(
          url,
          height: MediaQuery.sizeOf(context).aspectRatio * 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        ListTile(
          isThreeLine: true,
          title: Text(title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.star_half_rounded),
                  Text(rating.toString()),
                ],
              ),
              Text(address),
            ],
          ),
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const H_page()),);
          },
        )
      ]),
    );
  }
}
