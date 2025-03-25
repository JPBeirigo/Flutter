import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Text('Seja bem vindo(a) ao App',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
          ),),

          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {

            //NAVEGAÇÂO
            Navigator.pushNamed(context, 'cadastro');

          }, 
          child: Text('entrar'),
          )
        ],
      ),),
    );
  }
}