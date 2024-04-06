import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  _MeuApp createState() => _MeuApp();
}

class _MeuApp extends State<MeuApp>{
  var contador = 0;
  var cor = Colors.green;
  var texto = '';
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                contador.toString(),
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    setState((){
                      contador = contador + 1;
                      if (contador >= 10) {
                        cor = Colors.red;
                      }
                      if (contador >= 20) {
                        cor = Colors.yellow;
                      }
                      if (contador >= 30) {
                        cor = Colors.blue;
                      }
                      if (contador >= 40) {
                        cor = Colors.purple;
                      }
                      if (contador >= 50) {
                        cor = Colors.brown;
                      }
                    });
                  },
                  child: Text('+')
                  , ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if(cor == Colors.green){
                    cor = Colors.pink;
                    }else{
                      cor = Colors.green;
                    }
                  });
                },
                icon: Icon(
                  Icons.star,
                  color: cor,
                  size: 50,
                ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Informe o nome:'),
                    onChanged: (text) {
                      setState(() {
                        texto = text;
                      });
                    },
                ),
                Center(
                child: Text(
                texto,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}