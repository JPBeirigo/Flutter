import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controller/cadastro_controller.dart';

class ExibicaoView extends StatefulWidget {
  const ExibicaoView({super.key});

  @override
  State<ExibicaoView> createState() => _ExibicaoViewState();
}

class _ExibicaoViewState extends State<ExibicaoView> {
  final ctrl = GetIt.I.get<CadastroController>();

  @override
  void initState() {
    super.initState();
    ctrl.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text('Exibição', style: TextStyle(fontSize: 40)),
            SizedBox(height: 30),
            Text('Nome: ${ctrl.txtNome.text}', style: TextStyle(fontSize: 26)),
            SizedBox(height: 10),
            Text('E-mail: ${ctrl.txtEmail.text}', style: TextStyle(fontSize: 26)),
            SizedBox(height: 10),
            Text('Aceitar termos: ${ctrl.aceitarTermos}', style: TextStyle(fontSize: 26)),
            SizedBox(height: 30),
            ElevatedButton(onPressed: () {

              ctrl.limpar();

              Navigator.pushNamedAndRemoveUntil(context, 'home', 
              (Route route) => false, //remover todas as UI da pilha
              );
            }, child: Text('sair')),
          ],
        ),
      ),
    );
  }
}
