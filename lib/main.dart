import 'package:flutter/material.dart';

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
  
  //methods and variables

  Widget buildSentence(String text, {bool bold}) {

    if(bold == null) {
      bold = false;
    }

    return new Container(

        //Container style

        child: new Text(
          text,
          style: TextStyle(
            fontWeight: bold ? FontWeight.bold : FontWeight.normal
          )
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meu primeiro Flutter App",
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                  title: Text("Meu Primeiro App Bar"),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.announcement)),
                      Tab(icon: Icon(Icons.cake)),
                      Tab(icon: Icon(Icons.cloud))
                    ],
                  )),
              body: TabBarView(children: [
                Center(child: selfPresentationPage()),
                Center(child: projectDescriptionPage()),
                Center(child: Text("Filho 3")),
              ])),
        ));
  }

  Widget selfPresentationPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          new Row(
            children: [
              buildSentence("Nome:", bold: true),
              buildSentence("Matheus Furlan")
            ],
          )
        ],
      )
    );

  }

  Widget projectDescriptionPage() {

  }

  Widget randomPage() {

  }
}
