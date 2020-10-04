import 'package:flutter/material.dart';
// import 'sintaxe.dart';
// import 'sintaxeOOP.dart';
import 'sintaxeWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _context;
  String _string = "";

  void _incrementCounter() {
    setState(() {
      _string = "Ulisses \n";
      // _string += hello_world();
      // _string += declararTipos();
      // _string += naoDeclararTipos();
      // _string += obterTipo();
      // _string += tipoDinamico();
      // _string += conversaoTipo();
      // _string += estruturaDados();
      // _string += operadoresCondicionais();
      // _string += lacosRepeticao();
      // _string += findArea(2, 3);
      // _string += findPerimetro(2, 3);
      // _string += doSomething(2, 3, findArea);

      // Function func = findArea;
      // _string += doSomething(4, 2, func);

      // _string += parametrosOpcionaisPosicionais(1, 2);
      // _string += parametrosOpcionaisPosicionais(1, 2, 3);
      // _string += parametrosOpcionaisPosicionais(1, 2, 3, 4);
      // _string += "\n";
      // _string += parametrosOpcionaisNomeados(1, 2);
      // _string += parametrosOpcionaisNomeados(1, 2, d: 3);
      // _string += parametrosOpcionaisNomeados(1, 2, d: 3, c: 4);
      // _string += "\n";
      // _string += parametrosOpcionaisDefault(1, 2);
      // _string += parametrosOpcionaisDefault(1, 2, d: 3);
      // _string += parametrosOpcionaisDefault(1, 2, d: 3, c: 4);
      // _string += "\n";
      // _string += capturandoExcecoes();
      // _string += "\n";

      // Professor p0 = new ProfessorEmergencial("a", "b");

      print("-----------------------");

      // Professor p1 = new Professor();
      // _string += p1.nomeProfessor();

      //p1._nome = "asdf"; // Vai dar um erro.

      // _string += p1.nome;
      // p1.nome = "asdf";
      // _string += p1.asdf;
      // _string += "\n";
      // Professor p2 = new Professor.meuProprioConstrutor("U", "D");
      // _string += p2.nomeProfessor();

      //var x = Professor.vinculo;

      Navigator.push(_context,
          MaterialPageRoute(builder: (BuildContext context) => MyFirstApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_string',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
