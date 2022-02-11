import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// A funcao que diz ao flutter onde a app comeca.
void main() => runApp(Dino1());

class Dino1 extends StatelessWidget {
  // Stateless é um um widget sem o controle de estado, estático.

  void playDino(String dinoName) {
    // mostrar pub.dev e importar audioplayer
    final player = AudioCache();
    player.play('dino$dinoName.mp3');
  }

  //expanded widget que expande o child(Row, Columns, Flex)pra que o filho preencha o espaco disponivel
  Expanded showDino(String dinoName) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playDino(dinoName);
          },
          child: Padding(
            padding: EdgeInsets.all(10.0),
            //mostrar pubspec
            child: Image.asset('images/dino$dinoName.webp'),
          )),
    );
  }

  //override para sobrescrever o método build
  @override
  Widget build(BuildContext context) {
    // Material APP
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //scafold widget para criar a strutura de um lauyout
      home: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          // fixa uma bar no topo doda tela
          backgroundColor: Colors.red.shade700,
          title: const Text(
            'Dino Sounds',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        //safearea widget que deixa a interface adaptável pra varios dispositivos.
        body: SafeArea(
          child: Column(
            // crossAxisAlignment determina como Row e Column podem posicionar seus filhos em seus eixos cruzados
            // nesse caso da coluna to esticando da esquerda para a direita na tela
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              showDino('Brachio'),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Brachio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              showDino('TRex'),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'TRex',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              showDino('Raptor'),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Raptor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
