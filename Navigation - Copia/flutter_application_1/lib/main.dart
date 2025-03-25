import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/cadastro_controller.dart';
import 'package:flutter_application_1/controller/login_controller.dart';
import 'package:flutter_application_1/view/cadastro_view.dart';
import 'package:flutter_application_1/view/exibicao_view.dart';
import 'package:flutter_application_1/view/home_view.dart';
import 'package:flutter_application_1/view/login_view.dart';
import 'package:get_it/get_it.dart';

final g = GetIt.instance;

void main() {

  //Registrar o gerenciador de estados

  g.registerSingleton<CadastroController>(CadastroController());
  g.registerSingleton<LoginController>(LoginController());



  runApp(DevicePreview(
    builder: (context) => const MainApp(),
   ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'App',

       //Rotas de Navegação
       initialRoute: 'home',
       routes: {
        'home' :  (context) => const HomeView(),
        'cadastro' : (context) => const CadastroView(),
        'exibicao' : (context) => const ExibicaoView(),
        'login' : (context) => const LoginView()
        
       },
    ); 
  }
}
