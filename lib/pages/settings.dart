import 'package:flutter/material.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          const SizedBox(
            height: 150,
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                ),
                title: Text("T I T L E"),
                // visualDensity: VisualDensity(vertical: 4),
              ),
            ),
          ),
          
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Name...',
          //     labelText: 'Name',
          //   ),
          //   validator: (String? value) {
          //     return(value != null) ? 'enter name' : null;
          //   },
          // ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Name',
          //     labelText: 'Name....',
          //   ),
          //   validator: (String? value) {
          //     return(value != null) ? 'enter name' : null;
          //   },
          // ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Name',
          //     labelText: 'Name....',
          //   ),
          //   validator: (String? value) {
          //     return(value != null) ? 'enter name' : null;
          //   },
          // ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Name',
          //     labelText: 'Name....',
          //   ),
          //   validator: (String? value) {
          //     return(value != null) ? 'enter name' : null;
          //   },
          // ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     icon: Icon(Icons.person),
          //     hintText: 'Name',
          //     labelText: 'Name....',
          //   ),
          //   validator: (String? value) {
          //     return(value != null) ? 'enter name' : null;
          //   },
          // ),

          const ListTile(
            title: Text('N A M E'),
            subtitle: Text('Anjal Rai'),
          ),
          ListTile(
            title: Text('G E N D E R'),
            subtitle: Text('M A L E'),
          ),
          ListTile(
            title: Text('D A T E  OF  B I R T H'),
            subtitle: Text('2 JAN 2004'),
          ),
          ListTile(
            title: Text('M O B I L E  NO:'),
            subtitle: Text('9 8 6 8 6 8 7 5 8'),
          ),
          ListTile(
            title: Text('E - M A I L'),
            subtitle: Text('anjalraisam04@gmail.com'),
          ),
          ]).toList(),
    );
    
    
    // Container(
    //   child: const Center(child: Text("S E T T I N G S")),
    // );
  }
}