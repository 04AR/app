import 'package:flutter/material.dart';
import 'package:app/decor_var.dart';
import 'package:app/pages/insurance_generator.dart';

class Icons_card extends StatelessWidget {

  final String title;
  final String desc;
  final String url ;

  const Icons_card({super.key, required this.title, 
                              this.desc = "description", 
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
          fit: BoxFit.contain,
        ),
        ListTile(
          isThreeLine: true,
          title: Text(title),
          subtitle: Text(desc),
          onTap: (){
             Navigator.push(context, 
            MaterialPageRoute(builder: (context) => const In_Cal()),);
          },
        )
      ]),
    );
  }
}
