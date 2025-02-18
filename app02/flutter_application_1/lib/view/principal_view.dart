import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  Widget criarContainer(rotulo) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Center(child: Text('Container $rotulo',
        style: GoogleFonts.poppins(fontSize: 25), 
       /* style: TextStyle(fontSize: 32, 
        color: Colors.red, 
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Colors.green,
        decorationThickness: 4,
        fontFamily: 'sans-serif'),))*/
      ),
    )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício'),
      ),
      body: Padding(
        //padding: const EdgeInsets.all(30.0),
        //padding: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),

        child: Column(
          children: [
            Row(
              children: [
                criarContainer('A',),
                criarContainer('B'),
              ],
            ),
            criarContainer('C'),
            Row(
              children: [
                criarContainer('D'),
                criarContainer('E'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
