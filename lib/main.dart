import 'dart:math';
import 'package:flutter/material.dart';
//app para frases de efeito do valorant (especial para iniciadores apenas.)
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP para frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);
  @override
  State<frases> createState() => _frasesState();

}
class _frasesState extends State<frases> {
  //back do app
  //criar um array de frases para ser exibidas de forma aleatória
  var _frases = [
    'O que o pagodeiro foi fazer na igreja? foi cantar pá gód',//array frase 0
    'Como programar uma festa junina? ARRAY A[ ]',//array frase 1
    'Sabe porque o programador xinga os outros usando Assembly? porque é uma linguagem de baixo nível',//array frase 2
    'Jesus disse aos apóstolos, -irmãos x ao quadrado mais três x menos 5. e os apóstolos pergutam: -O que é isso? Jesus responde: -É uma parábola',//array frase 3
    'Sabe quem é o DJ das festas de TI? o DJQUERY',//array frase 4
    'O que o programador java foi fazer no ensino médio? ele foi revisitar a classe',//array frase 5
  ];
  var _frasesGerada= 'Clique abaixo para gerar uma frase!';//o texto vai estar depois da imagem do logo, para chamar a função _gerarfrase

  void _gerarFrase(){//função de gerar as frases
    //numero sorteado irá pegar de forma aleatória de 0,1,2,3,4,5 das frases do array
    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um import do tipo 'dart:math';
    //o random é responsável por exibir o array de forma aleatória
    setState(() {
      _frasesGerada=_frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text('Malokapp'),
        backgroundColor: Colors.purple,//cor da appBar
      ),
      body: Center(//centralizar o body
        child: Container(
          padding: EdgeInsets.all(16),//espaçamento appbar para o body
          child: Column(//verificar os elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround,//spacearound== entre os espaços // .
            crossAxisAlignment: CrossAxisAlignment.center,//centralizar o espaçamento
            children: <Widget> [
              Image.asset('img/passinho-do-romano-dance.gif'//Criar a logo no canva
              ),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold
                ),
              ),
              ElevatedButton(//botão para gerar as frases
                onPressed: _gerarFrase,//colocar a função array de frases aleatória
                child: Text('Nova frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold


                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              ),
            ],// ),
          ),// ),
        ),
      ),
    );
  }
}
