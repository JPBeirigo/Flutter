import 'package:flutter/material.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//BARRA DE TÍTULO
        appBar: AppBar(
          title: Text('Computer Store',
          style: TextStyle(
            color: Colors.white
          ),),
          backgroundColor: Colors.red,
        ),

        //CORPO

        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [Icon(Icons.computer, size: 120),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt mauris. Cras sagittis, urna eu tristique ultricies.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, 
          children:[Icon(Icons.mouse,
          size:60),
          Icon(Icons.monitor, 
          size: 60), Icon(Icons.print, size: 60), Icon(Icons.tablet_mac, size: 58,)]
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, 
          children:[Text('Mouse', style: TextStyle(fontWeight: FontWeight.bold),), 
          Text('Monitor',  style: TextStyle(fontWeight: FontWeight.bold)), 
          Text('Printer',  style: TextStyle(fontWeight: FontWeight.bold)), 
          Text('Tablet',  style: TextStyle(fontWeight: FontWeight.bold))]
          ),
          Text('Fusce condimentum, turpis sit amet commodo tincidunt, odio nunc luctus risus, molestie venenatis diam lectus et tortor. Maecenas non accumsan lectus.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
          ],
        ),
    );
  }
}