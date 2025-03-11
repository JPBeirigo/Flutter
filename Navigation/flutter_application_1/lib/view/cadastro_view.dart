import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controller/cadastro_controller.dart';

class CadastroView extends StatefulWidget {
  const CadastroView({super.key});

  @override
  State<CadastroView> createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
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
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Cadastro', style: TextStyle(fontSize: 40)),
            SizedBox(height: 30),
            TextField(
              controller: ctrl.txtNome,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: ctrl.txtEmail,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text('Aceitar os termos de uso'),
              value: ctrl.aceitarTermos,
              onChanged: (value) {
                ctrl.setAceitarTermos(value);
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'exibicao');
              },
              child: Text('salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
