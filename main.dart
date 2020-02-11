import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meus Livros',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Meus Livros'),
    );
  }
}

class Livro {
  String nome;
  String status;
  Livro(this.nome, {this.status="Não Lido"});
  ListTile genTile(){
    
    return ListTile(
                  leading: Icon(Icons.star_border, size: 42, color: Colors.blue,),
                  title: Text(this.nome, style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(this.status, style: TextStyle(color: Colors.grey[700]),),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                );
  }

  Widget genRow() {
    return Column(children: <Widget>[
      Padding(padding: EdgeInsets.symmetric(vertical: 8),),
      Row(children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),),
          Icon(Icons.star_border, size: 42, color: Colors.blue,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),),
          Column(children: <Widget>[
              Row(children: <Widget>[Text(this.nome, style: TextStyle(fontWeight: FontWeight.bold),)]),
              Row(children: <Widget>[
                  Text(this.status, style: TextStyle(color: Colors.grey[700]),)
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),),
        ],
      ),
    ]);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    List<Livro> livros = new List<Livro>();    
    livros.add(Livro("Harry Potter", status: "Lido"));
    livros.add(Livro("Senhor dos Anéis", status: "Lido"));
    livros.add(Livro("Análise Preditiva", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));
    livros.add(Livro("Negócios Digitais", status: "Lendo"));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: livros.map((f) => f.genRow()).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
