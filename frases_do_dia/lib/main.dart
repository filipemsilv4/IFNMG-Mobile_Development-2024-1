import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(){
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      home: HomeStateFull()
  ));
}
class HomeStateFull extends StatefulWidget { //StateFull para alterar estados da tela
  const HomeStateFull({super.key});
  @override
//State<HomeStateFull> createState() => _HomeStateFullState();
  State<HomeStateFull> createState(){ //bloco alternativo a linha anterior
    return _HomeStateFullState();
  }
}
class _HomeStateFullState extends State<HomeStateFull> {
  var _titulo = "Frases do dia!"; //variável a ser usada para atualizar a tela
  final _frases = [
    "A vida é bela",
    "A vida é um sonho",
    "A vida é um sopro",
    "A vida é um void estático público",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Image.asset("imagens/mesa.jpg",
            fit: BoxFit.contain,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: (){
                setState(() {
                  _titulo = _frases[math.Random().nextInt(4)];
                });
              },
              child: const Text("Clicar")
          ),
          Text(_titulo)
        ],
      )
  );
  }
}