import 'dart:math';

import 'package:flutter/material.dart';

//Mostrar bonitamente os numeros q foram sorteados
//criar o metodo premiar(acertos)
//Mostrar bonitamente o premio

void main(){
  runApp(const MaterialApp(
    home: Home(),
  ));
}

void showAlertDialog(BuildContext context, String retorno){
  Widget ok = ElevatedButton(onPressed: () => {Navigator.of(context).pop()}, child: const Text('ok'), style: ElevatedButton.styleFrom(primary: Colors.red));
  AlertDialog alertDialog = AlertDialog(title: Text(retorno),alignment: Alignment.center,actions: <Widget>[Container(alignment: Alignment.center, child: ok,)]);
  showDialog(context: context, builder: (BuildContext context){return alertDialog;});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController controllerPremio = TextEditingController();

  List<int> numerosSorteados = [];

  int contadorEscolhidos = 0;
  int acertos = 0;

  //declarando variaveis de controle

  bool b1 = false, b2 = false, b3 = false, b4 = false, b5 = false, b6 = false, b7 = false, b8 = false, b9 = false, b10 = false; //botao 1...10
  bool b1a = false, b2a = false, b3a = false, b4a = false, b5a = false, b6a = false, b7a = false, b8a = false, b9a = false, b10a = false; //botao 1...10 acertou  

  bool b11 = false, b12 = false, b13 = false, b14 = false, b15 = false, b16 = false, b17 = false, b18 = false, b19 = false, b20 = false; 
  bool b11a = false, b12a = false, b13a = false, b14a = false, b15a = false, b16a = false, b17a = false, b18a = false, b19a = false, b20a = false;  

  bool b21 = false, b22 = false, b23 = false, b24 = false, b25 = false, b26 = false, b27 = false, b28 = false, b29 = false, b30 = false; 
  bool b21a = false, b22a = false, b23a = false, b24a = false, b25a = false, b26a = false, b27a = false, b28a = false, b29a = false, b30a = false;  

  bool b31 = false, b32 = false, b33 = false, b34 = false, b35 = false, b36 = false, b37 = false, b38 = false, b39 = false, b40 = false; 
  bool b31a = false, b32a = false, b33a = false, b34a = false, b35a = false, b36a = false, b37a = false, b38a = false, b39a = false, b40a = false;  

  bool b41 = false, b42 = false, b43 = false, b44 = false, b45 = false, b46 = false, b47 = false, b48 = false, b49 = false, b50 = false; 
  bool b41a = false, b42a = false, b43a = false, b44a = false, b45a = false, b46a = false, b47a = false, b48a = false, b49a = false, b50a = false;   

  bool b51 = false, b52 = false, b53 = false, b54 = false, b55 = false, b56 = false, b57 = false, b58 = false, b59 = false, b60 = false;
  bool b51a = false, b52a = false, b53a = false, b54a = false, b55a = false, b56a = false, b57a = false, b58a = false, b59a = false, b60a = false;  

  String mensagem = "nada ainda";
  String premio = "Ainda sem prêmio";
  String mensagemSorteados = "Nenhum número sorteado";

  void gerarAleatorios(){
    int numero;
    int i = 0;
    while(i<5){
      numero = Random().nextInt(60);
      //checar se ja existe
      if(numero == 0){
        numero++;
      }
      numerosSorteados.contains(numero) ? numerosSorteados.add(numero+1) : numerosSorteados.add(numero);
      i++;
      
    }
  }

  void ordenar(x){
    int aux;
    for(int i = 0; i < x.length - 1; i++){
      if(x[i] > x[i+1]){
        aux = x[i];
        x[i] = x[i+1];
        x[i+1] = aux;
      }
    }
  }

  void limpar(){
    setState(() {
      numerosSorteados.removeRange(0, numerosSorteados.length);
      acertos = 0;
    });
  }

  void premiar(){
    setState(() {
      switch(acertos){
        case 1:
          premio = "Parabéns, acertô HUM. Ganhou um aperto de mão";
          break;
        case 2:
          premio = "Parabéns, acertô DOIS. Ganhou um salgado e um suco do MandaAI";
          break;
        case 3:
          premio = "Parabéns, acertô TREEEIS. Ganhou HUM MILHÃO DE KWANZAS(10 reais)";
          break;
        case 4:
          premio = "Parabéns, acertô QUATO. Ganhou 69 ingressos pro Morbius";
          break;
        case 5:
          premio = "Parabéns, acertô FAIVE. Ganhou fornecimento vitalicio de café da tia Lu";
          break;
        case 6:
          premio = "TOP!!!!, acertô foi tudo. Receba uma voadora GIGA BLASTER no mei dos peito";
          break;
      }
    });
  }

  void apostar(){
    setState(() {

      premio = "Ainda sem prêmio";
      
      b1a = false; b2a = false; b3a = false; b4a = false; b5a = false; b6a = false; b7a = false; b8a = false; b9a = false; b10a = false;
      b11a = false; b12a = false; b13a = false; b14a = false; b15a = false; b16a = false; b17a = false; b18a = false; b19a = false; b20a = false;
      b21a = false; b22a = false; b23a = false; b24a = false; b25a = false; b26a = false; b27a = false; b28a = false; b29a = false; b30a = false;
      b31a = false; b32a = false; b33a = false; b34a = false; b35a = false; b36a = false; b37a = false; b38a = false; b39a = false; b40a = false;
      b41a = false; b42a = false; b43a = false; b44a = false; b45a = false; b46a = false; b47a = false; b48a = false; b49a = false; b50a = false;
      b51a = false; b52a = false; b53a = false; b54a = false; b55a = false; b56a = false; b57a = false; b58a = false; b59a = false; b60a = false;

      gerarAleatorios();

      if(contadorEscolhidos != 6){
        mensagem = "Quantidade de números inválida";
        showAlertDialog(context, mensagem);
      }else{

      for (int i = 0; i < 5; i++) {
          if(numerosSorteados[i] == 1 && b1 == true){ b1a = true; acertos++;}
          if(numerosSorteados[i] == 2 && b2 == true){ b2a = true; acertos++;}
          if(numerosSorteados[i] == 3 && b3 == true){ b3a = true; acertos++;}
          if(numerosSorteados[i] == 4 && b4 == true){ b4a = true; acertos++;}
          if(numerosSorteados[i] == 5 && b5 == true){ b5a = true; acertos++;}
          if(numerosSorteados[i] == 6 && b6 == true){ b6a = true; acertos++;}
          if(numerosSorteados[i] == 7 && b7 == true){ b7a = true; acertos++;}
          if(numerosSorteados[i] == 8 && b8 == true){ b8a = true; acertos++;}
          if(numerosSorteados[i] == 9 && b9 == true){ b9a = true; acertos++;}
          if(numerosSorteados[i] == 10 && b10 == true){ b10a = true; acertos++;}

          if(numerosSorteados[i] == 11 && b11 == true){ b11a = true; acertos++;}
          if(numerosSorteados[i] == 12 && b12 == true){ b12a = true; acertos++;}
          if(numerosSorteados[i] == 13 && b13 == true){ b13a = true; acertos++;}
          if(numerosSorteados[i] == 14 && b14 == true){ b14a = true; acertos++;}
          if(numerosSorteados[i] == 15 && b15 == true){ b15a = true; acertos++;}
          if(numerosSorteados[i] == 16 && b16 == true){ b16a = true; acertos++;}
          if(numerosSorteados[i] == 17 && b17 == true){ b17a = true; acertos++;}
          if(numerosSorteados[i] == 18 && b18 == true){ b18a = true; acertos++;}
          if(numerosSorteados[i] == 19 && b19 == true){ b19a = true; acertos++;}
          if(numerosSorteados[i] == 20 && b20 == true){ b20a = true; acertos++;}

          if(numerosSorteados[i] == 21 && b21 == true){ b21a = true; acertos++;}
          if(numerosSorteados[i] == 22 && b22 == true){ b22a = true; acertos++;}
          if(numerosSorteados[i] == 23 && b23 == true){ b23a = true; acertos++;}
          if(numerosSorteados[i] == 24 && b24 == true){ b24a = true; acertos++;}
          if(numerosSorteados[i] == 25 && b25 == true){ b25a = true; acertos++;}
          if(numerosSorteados[i] == 26 && b26 == true){ b26a = true; acertos++;}
          if(numerosSorteados[i] == 27 && b27 == true){ b27a = true; acertos++;}
          if(numerosSorteados[i] == 28 && b28 == true){ b28a = true; acertos++;}
          if(numerosSorteados[i] == 29 && b29 == true){ b29a = true; acertos++;}
          if(numerosSorteados[i] == 30 && b30 == true){ b30a = true; acertos++;}

          if(numerosSorteados[i] == 31 && b31 == true){ b31a = true; acertos++;}
          if(numerosSorteados[i] == 32 && b32 == true){ b32a = true; acertos++;}
          if(numerosSorteados[i] == 33 && b33 == true){ b33a = true; acertos++;}
          if(numerosSorteados[i] == 34 && b34 == true){ b34a = true; acertos++;}
          if(numerosSorteados[i] == 35 && b35 == true){ b35a = true; acertos++;}
          if(numerosSorteados[i] == 36 && b36 == true){ b36a = true; acertos++;}
          if(numerosSorteados[i] == 37 && b37 == true){ b37a = true; acertos++;}
          if(numerosSorteados[i] == 38 && b38 == true){ b38a = true; acertos++;}
          if(numerosSorteados[i] == 39 && b39 == true){ b39a = true; acertos++;}
          if(numerosSorteados[i] == 40 && b40 == true){ b40a = true; acertos++;}

          if(numerosSorteados[i] == 41 && b41 == true){ b41a = true; acertos++;}
          if(numerosSorteados[i] == 42 && b42 == true){ b42a = true; acertos++;}
          if(numerosSorteados[i] == 43 && b43 == true){ b43a = true; acertos++;}
          if(numerosSorteados[i] == 44 && b44 == true){ b44a = true; acertos++;}
          if(numerosSorteados[i] == 45 && b45 == true){ b45a = true; acertos++;}
          if(numerosSorteados[i] == 46 && b46 == true){ b46a = true; acertos++;}
          if(numerosSorteados[i] == 47 && b47 == true){ b47a = true; acertos++;}
          if(numerosSorteados[i] == 48 && b48 == true){ b48a = true; acertos++;}
          if(numerosSorteados[i] == 49 && b49 == true){ b49a = true; acertos++;}
          if(numerosSorteados[i] == 50 && b50 == true){ b50a = true; acertos++;}

          if(numerosSorteados[i] == 51 && b51 == true){ b51a = true; acertos++;}
          if(numerosSorteados[i] == 52 && b52 == true){ b52a = true; acertos++;}
          if(numerosSorteados[i] == 53 && b53 == true){ b53a = true; acertos++;}
          if(numerosSorteados[i] == 54 && b54 == true){ b54a = true; acertos++;}
          if(numerosSorteados[i] == 55 && b55 == true){ b55a = true; acertos++;}
          if(numerosSorteados[i] == 56 && b56 == true){ b56a = true; acertos++;}
          if(numerosSorteados[i] == 57 && b57 == true){ b57a = true; acertos++;}
          if(numerosSorteados[i] == 58 && b58 == true){ b58a = true; acertos++;}
          if(numerosSorteados[i] == 59 && b59 == true){ b59a = true; acertos++;}
          if(numerosSorteados[i] == 60 && b60 == true){ b60a = true; acertos++;}
        }
          
      }
          mensagemSorteados = "Números sorteados: $numerosSorteados";
      

      premiar();
      limpar();

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Giga Blaster Sena"),centerTitle: true,
      ),
      body: SingleChildScrollView(child: 
        Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              ElevatedButton(onPressed: () => {setState((){b1 = !b1; b1 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b1 == true? Colors.black : Colors.white, primary: b1a == true ? Colors.green : Colors.amber), child: const Text('1')),
              ElevatedButton(onPressed: () => {setState((){b2 = !b2; b2 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b2 == true? Colors.black : Colors.white, primary: b2a == true ? Colors.green : Colors.amber), child: const Text('2')),
              ElevatedButton(onPressed: () => {setState((){b3 = !b3; b3 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b3 == true? Colors.black : Colors.white, primary: b3a == true ? Colors.green : Colors.amber), child: const Text('3')),
              ElevatedButton(onPressed: () => {setState((){b4 = !b4; b4 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b4 == true? Colors.black : Colors.white, primary: b4a == true ? Colors.green : Colors.amber), child: const Text('4')),
              ElevatedButton(onPressed: () => {setState((){b5 = !b5; b5 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b5 == true? Colors.black : Colors.white, primary: b5a == true ? Colors.green : Colors.amber), child: const Text('5')),
            ],
          ), 
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              ElevatedButton(onPressed: () => {setState((){b6 = !b6; b6 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b6 == true? Colors.black : Colors.white, primary: b6a == true ? Colors.green : Colors.amber), child: const Text('6')),
              ElevatedButton(onPressed: () => {setState((){b7 = !b7; b7 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b7 == true? Colors.black : Colors.white, primary: b7a == true ? Colors.green : Colors.amber), child: const Text('7')),
              ElevatedButton(onPressed: () => {setState((){b8 = !b8; b8 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b8 == true? Colors.black : Colors.white, primary: b8a == true ? Colors.green : Colors.amber), child: const Text('8')),
              ElevatedButton(onPressed: () => {setState((){b9 = !b9; b9 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b9 == true? Colors.black : Colors.white, primary: b9a == true ? Colors.green : Colors.amber), child: const Text('9')),
              ElevatedButton(onPressed: () => {setState((){b10 = !b10; b10 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b10 == true? Colors.black : Colors.white, primary: b10a == true ? Colors.green : Colors.amber), child: const Text('10')),
            ],
          ), 
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: () => {setState((){b11 = !b11; b11 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b11 == true? Colors.black : Colors.white, primary: b11a == true ? Colors.green : Colors.amber), child: const Text('11')),
              ElevatedButton(onPressed: () => {setState((){b12 = !b12; b12 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b12 == true? Colors.black : Colors.white, primary: b12a == true ? Colors.green : Colors.amber), child: const Text('12')),
              ElevatedButton(onPressed: () => {setState((){b13 = !b13; b13 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b13 == true? Colors.black : Colors.white, primary: b13a == true ? Colors.green : Colors.amber), child: const Text('13')),
              ElevatedButton(onPressed: () => {setState((){b14 = !b14; b14 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b14 == true? Colors.black : Colors.white, primary: b14a == true ? Colors.green : Colors.amber), child: const Text('14')),
              ElevatedButton(onPressed: () => {setState((){b15 = !b15; b15 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b15 == true? Colors.black : Colors.white, primary: b15a == true ? Colors.green : Colors.amber), child: const Text('15')),

            ],
          ), 

          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              ElevatedButton(onPressed: () => {setState((){b16 = !b16; b16 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b16 == true? Colors.black : Colors.white, primary: b16a == true ? Colors.green : Colors.amber), child: const Text('16')),
              ElevatedButton(onPressed: () => {setState((){b17 = !b17; b17 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b17 == true? Colors.black : Colors.white, primary: b17a == true ? Colors.green : Colors.amber), child: const Text('17')),
              ElevatedButton(onPressed: () => {setState((){b18 = !b18; b18 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b18 == true? Colors.black : Colors.white, primary: b18a == true ? Colors.green : Colors.amber), child: const Text('18')),
              ElevatedButton(onPressed: () => {setState((){b19 = !b19; b19 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b19 == true? Colors.black : Colors.white, primary: b19a == true ? Colors.green : Colors.amber), child: const Text('19')),
              ElevatedButton(onPressed: () => {setState((){b20 = !b20; b20 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b20 == true? Colors.black : Colors.white, primary: b20a == true ? Colors.green : Colors.amber), child: const Text('20')),
          ],),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: () => {setState((){b21 = !b21; b21 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b21 == true? Colors.black : Colors.white, primary: b21a == true ? Colors.green : Colors.amber), child: const Text('21')),
              ElevatedButton(onPressed: () => {setState((){b22 = !b22; b22 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b22 == true? Colors.black : Colors.white, primary: b22a == true ? Colors.green : Colors.amber), child: const Text('22')),
              ElevatedButton(onPressed: () => {setState((){b23 = !b23; b23 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b23 == true? Colors.black : Colors.white, primary: b23a == true ? Colors.green : Colors.amber), child: const Text('23')),
              ElevatedButton(onPressed: () => {setState((){b24 = !b24; b24 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b24 == true? Colors.black : Colors.white, primary: b24a == true ? Colors.green : Colors.amber), child: const Text('24')),
              ElevatedButton(onPressed: () => {setState((){b25 = !b25; b25 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b25 == true? Colors.black : Colors.white, primary: b25a == true ? Colors.green : Colors.amber), child: const Text('25')),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              ElevatedButton(onPressed: () => {setState((){b26 = !b26; b26 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b26 == true? Colors.black : Colors.white, primary: b26a == true ? Colors.green : Colors.amber), child: const Text('26')),
              ElevatedButton(onPressed: () => {setState((){b27 = !b27; b27 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b27 == true? Colors.black : Colors.white, primary: b27a == true ? Colors.green : Colors.amber), child: const Text('27')),
              ElevatedButton(onPressed: () => {setState((){b28 = !b28; b28 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b28 == true? Colors.black : Colors.white, primary: b28a == true ? Colors.green : Colors.amber), child: const Text('28')),
              ElevatedButton(onPressed: () => {setState((){b29 = !b29; b29 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b29 == true? Colors.black : Colors.white, primary: b29a == true ? Colors.green : Colors.amber), child: const Text('29')),
              ElevatedButton(onPressed: () => {setState((){b30 = !b30; b30 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b30 == true? Colors.black : Colors.white, primary: b30a == true ? Colors.green : Colors.amber), child: const Text('30')),
          ]),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: () => {setState((){b31 = !b31; b31 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b31 == true? Colors.black : Colors.white, primary: b31a == true ? Colors.green : Colors.amber), child: const Text('31')),
              ElevatedButton(onPressed: () => {setState((){b32 = !b32; b32 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b32 == true? Colors.black : Colors.white, primary: b32a == true ? Colors.green : Colors.amber), child: const Text('32')),
              ElevatedButton(onPressed: () => {setState((){b33 = !b33; b33 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b33 == true? Colors.black : Colors.white, primary: b33a == true ? Colors.green : Colors.amber), child: const Text('33')),
              ElevatedButton(onPressed: () => {setState((){b34 = !b34; b34 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b34 == true? Colors.black : Colors.white, primary: b34a == true ? Colors.green : Colors.amber), child: const Text('34')),
              ElevatedButton(onPressed: () => {setState((){b35 = !b35; b35 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b35 == true? Colors.black : Colors.white, primary: b35a == true ? Colors.green : Colors.amber), child: const Text('35')),
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(onPressed: () => {setState((){b36 = !b36; b36 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b36 == true? Colors.black : Colors.white, primary: b36a == true ? Colors.green : Colors.amber), child: const Text('36')),
              ElevatedButton(onPressed: () => {setState((){b37 = !b37; b37 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b37 == true? Colors.black : Colors.white, primary: b37a == true ? Colors.green : Colors.amber), child: const Text('37')),
              ElevatedButton(onPressed: () => {setState((){b38 = !b38; b38 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b38 == true? Colors.black : Colors.white, primary: b38a == true ? Colors.green : Colors.amber), child: const Text('38')),
              ElevatedButton(onPressed: () => {setState((){b39 = !b39; b39 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b39 == true? Colors.black : Colors.white, primary: b39a == true ? Colors.green : Colors.amber), child: const Text('39')),
              ElevatedButton(onPressed: () => {setState((){b40 = !b40; b40 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b40 == true? Colors.black : Colors.white, primary: b40a == true ? Colors.green : Colors.amber), child: const Text('40')),
            ],
          ), 
 
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => {setState((){b41 = !b41; b41 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b41 == true? Colors.black : Colors.white, primary: b41a == true ? Colors.green : Colors.amber), child: const Text('41')),
              ElevatedButton(onPressed: () => {setState((){b42 = !b42; b42 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b42 == true? Colors.black : Colors.white, primary: b42a == true ? Colors.green : Colors.amber), child: const Text('42')),
              ElevatedButton(onPressed: () => {setState((){b43 = !b43; b43 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b43 == true? Colors.black : Colors.white, primary: b43a == true ? Colors.green : Colors.amber), child: const Text('43')),
              ElevatedButton(onPressed: () => {setState((){b44 = !b44; b44 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b44 == true? Colors.black : Colors.white, primary: b44a == true ? Colors.green : Colors.amber), child: const Text('44')),
              ElevatedButton(onPressed: () => {setState((){b45 = !b45; b45 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b45 == true? Colors.black : Colors.white, primary: b45a == true ? Colors.green : Colors.amber), child: const Text('45')),

            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => {setState((){b46 = !b46; b46 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b46 == true? Colors.black : Colors.white, primary: b46a == true ? Colors.green : Colors.amber), child: const Text('46')),
              ElevatedButton(onPressed: () => {setState((){b47 = !b47; b47 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b47 == true? Colors.black : Colors.white, primary: b47a == true ? Colors.green : Colors.amber), child: const Text('47')),
              ElevatedButton(onPressed: () => {setState((){b48 = !b48; b48 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b48 == true? Colors.black : Colors.white, primary: b48a == true ? Colors.green : Colors.amber), child: const Text('48')),
              ElevatedButton(onPressed: () => {setState((){b49 = !b49; b49 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b49 == true? Colors.black : Colors.white, primary: b49a == true ? Colors.green : Colors.amber), child: const Text('49')),
              ElevatedButton(onPressed: () => {setState((){b50 = !b50; b50 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b50 == true? Colors.black : Colors.white, primary: b50a == true ? Colors.green : Colors.amber), child: const Text('50')),
              
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => {setState((){b51 = !b51; b51 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b51 == true? Colors.black : Colors.white, primary: b51a == true ? Colors.green : Colors.amber), child: const Text('51')),
              ElevatedButton(onPressed: () => {setState((){b52 = !b52; b52 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b52 == true? Colors.black : Colors.white, primary: b52a == true ? Colors.green : Colors.amber), child: const Text('52')),
              ElevatedButton(onPressed: () => {setState((){b53 = !b53; b53 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b53 == true? Colors.black : Colors.white, primary: b53a == true ? Colors.green : Colors.amber), child: const Text('53')),
              ElevatedButton(onPressed: () => {setState((){b54 = !b54; b54 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b54 == true? Colors.black : Colors.white, primary: b54a == true ? Colors.green : Colors.amber), child: const Text('54')),
              ElevatedButton(onPressed: () => {setState((){b55 = !b55; b55 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b55 == true? Colors.black : Colors.white, primary: b55a == true ? Colors.green : Colors.amber), child: const Text('55')),
              
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () => {setState((){b56 = !b56; b56 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b56 == true? Colors.black : Colors.white, primary: b56a == true ? Colors.green : Colors.amber), child: const Text('56')),
              ElevatedButton(onPressed: () => {setState((){b57 = !b57; b57 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b57 == true? Colors.black : Colors.white, primary: b57a == true ? Colors.green : Colors.amber), child: const Text('57')),
              ElevatedButton(onPressed: () => {setState((){b58 = !b58; b58 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b58 == true? Colors.black : Colors.white, primary: b58a == true ? Colors.green : Colors.amber), child: const Text('58')),
              ElevatedButton(onPressed: () => {setState((){b59 = !b59; b59 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b59 == true? Colors.black : Colors.white, primary: b59a == true ? Colors.green : Colors.amber), child: const Text('59')),
              ElevatedButton(onPressed: () => {setState((){b60 = !b60; b60 == true ? contadorEscolhidos++ : contadorEscolhidos--;})},style: ElevatedButton.styleFrom(fixedSize: const Size.fromRadius(1),shape: const CircleBorder(),onPrimary: b60 == true? Colors.black : Colors.white, primary: b60a == true ? Colors.green : Colors.amber), child: const Text('60')),
            ],
          ),

        Padding(padding: const EdgeInsets.all(10),child: Text(mensagemSorteados,style: const TextStyle(fontSize: 18,fontStyle: FontStyle.italic),)),
        Padding(padding: const EdgeInsets.all(10),child: Text(premio,style: const TextStyle(fontSize: 18),)),
        ElevatedButton(onPressed: () => {apostar()}, child: const Text('Apostar!'),style: ElevatedButton.styleFrom(primary: Colors.green),),
        ]
      ),
    )
     

    );
  }
}
