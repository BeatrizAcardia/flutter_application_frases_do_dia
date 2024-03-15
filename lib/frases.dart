// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Myfrases extends StatefulWidget {
  const Myfrases({super.key});

  @override
  State<Myfrases> createState() => _MyfrasesState();
}

class _MyfrasesState extends State<Myfrases> {

  List<String> listaDeFrases = ['Enquanto houver vida, haverá louça na pia.', 'A expectativa é igual a paçoca. Do nada esfarela tudo', 'E quando der certo, não se assuste. É porque você já se lascou demais!', 'Na vida saiba diferenciar quem é luz de quem é gambiarra. 💡', 'Bondade é como blush. Seu uso em excesso te torna uma palhaça.'];
  String textoFrases = " ";
  int n1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia", style: TextStyle(color: const Color.fromARGB(255, 230, 228, 225)),), 
        centerTitle: true, 
        backgroundColor: const Color.fromARGB(255, 165, 122, 107),),
        body: Center(child: Column(children: [
          SizedBox(height: 200, width: 200, child: Image.network('https://midias.correiobraziliense.com.br/_midias/jpg/2023/08/07/ana_maria_braga_4_1024x768-28831489.jpg'),),
          SizedBox(height: 20,),
          Text("Frase do diia menina: \n" + textoFrases, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,)),

          ElevatedButton(onPressed: () {
            n1 = Random().nextInt(5);
            textoFrases = listaDeFrases[n1];

            setState(() {
            });
          }, child: Text("Acoorde menina"))
        ],)),
    );
  }
}