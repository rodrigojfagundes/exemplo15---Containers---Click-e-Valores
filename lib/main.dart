import 'dart:ffi';

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
//declarando as variaveis

//variavel T1 é onde ficara armazenado os numeros digitados pelo usuario
  final TextEditingController t1 = new TextEditingController(text: "0");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando o esqueleto/scaffold do App
      home: Scaffold(
        //cor d efundo do app
        backgroundColor: Colors.yellow,
        //no corpo a SafeArea... ou seja todo APP fica em area visivel da tela
        body: SafeArea(
          //criano uma coluna /lista/vetor para colocar os containers
          child: Column(
            //o primeiro CHILDREN/FILHO
            children: [
              //gesture detector é uma area para detectar se for precionado a tela
              GestureDetector(
                //se for dado um CLICK/TOQUE
                onTap: () {
                  //sera alterado o estado da variavel T1
                  setState(() {
                    //sera adicionado o valor 1 aos valores ja existente na variavel T1
                    t1.text = t1.text + "1";
                  });
                },
                //criandoum container DENTRO do Gesture Detect
                child: Container(
                  //passando TAMANHO, COR e TEXTO do Container
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Text('valor 1'),
                ),
              ),
              //criando area de detecção ao TOQUE/CLICK
              GestureDetector(
                //Se for TOCADO/CLICADO 1 VEZ
                onTap: () {
                  //sera alterado o ESTADO da variavel t1
                  setState(() {
                    //adicionando o VALOR 2 a variavel T1
                    t1.text = t1.text + "2";
                  });
                },
                //criando o container dentro do GESTURE DECTOR,
                //se for clicado no container vai executar o Gesture Detector
                child: Container(
                  //TAMANHO, COR e TEXTO do Container
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text('2'),
                ),
              ),
              //criando area de dectecção de click/toque dentro do app
              GestureDetector(
                //se for apertado 1 vez nessa area
                onTap: () {
                  //alterando o estado da variavel T1
                  setState(() {
                    //variavel T1 vai receber o valor 3... + os valores q ela ja tinha
                    t1.text = t1.text + "3";
                  });
                },
                //criando um Container dentro do GESTURE DETECTOR
                child: Container(
                  //tamanho, cor e texto do container
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Text('3'),
                ),
              ),
              //criando area de deteccao de click/toque dentro do app
              GestureDetector(
                //se clicar uma vez
                onTap: () {
                  //altera o ESTADO da variavel T1
                  setState(() {
                    //adicionando o valor 0 aos valores ja existente na variavel T1
                    t1.text = t1.text + "0";
                  });
                },
                //criando um container dentro de Gesture Detector
                child: Container(
                  //TAMANHO, COR, e no Texto os valores da Variavel T1
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Text(t1.text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
