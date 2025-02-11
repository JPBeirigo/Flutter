//Aula 01

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    
    //Carregar o plugin device Preview
    DevicePreview(
      enabled: true, 
      builder: (context) => const MainApp(),
    ),

  );
}

//
// UI Principal
// stl+TAB --> Cria um UI do tipo stateless

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste',
      home: Scaffold(

        //BARRA DE TÍTULO
        appBar: AppBar(
          title: Text('Titulo',
          style: TextStyle(
            color: Colors.white
          ),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 78, 189),
        ),

        //CORPO

        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [Text('Hello World', style: TextStyle(fontSize: 25),),
          Row(mainAxisAlignment: MainAxisAlignment.center, children:[Icon(Icons.camera,
          size:80, color: const Color.fromARGB(255, 77, 78, 78)),Icon(Icons.car_crash, size: 80, color: Colors.red,)]),
          Icon(Icons.wifi, size: 80, color: Colors.lightBlue,),
          ],
        ),

        //BOTÃO FLUTUANTE

        floatingActionButton: FloatingActionButton(onPressed: (){
          print('botão pressionado');
        },
        child: Icon(Icons.add),
        ),
      )
    );
  }
}