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
                Center(child: randomPage()),
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
              buildSentence("Nome: ", bold: true),
              buildSentence("Matheus Furlan")
            ],
          ),
          new Row(
            children: [
              buildSentence("RA: ", bold: true),
              buildSentence("222235")
            ],
          ),
          new Row(
            children: [
              buildSentence("Curso: ", bold: true),
              buildSentence("TADS")
            ],
          ),
          new Row(children: [
            buildSentence("Semestre: ", bold: true),
            buildSentence("6")
          ],),
          new Row(children: [
            buildSentence("Estagio: ", bold: true),
            buildSentence("CI&T")
          ],),
          new Row(children: [
            buildSentence("Stack do estagio: ", bold: true),
            buildSentence("ReactJS, .NET, Cypress + ")
          ],),
          new Row(children: [
            buildSentence("MSSQL, Specflow, testing library, jest")
          ],),
          new Row(children: [
            buildSentence("Trabalho: ", bold: true),
            buildSentence("Desenvolvedor full stack + automatizacao de testes")
          ],),
          new Row(children: [
            buildSentence("Gosta de programar: ", bold: true),
            buildSentence("Sim")
          ],),
          new Row(children: [
            buildSentence("Tempo livre: ", bold: true),
            buildSentence("Amigos, cozinha, festas, apreciar paisagens")
          ],),
          new Row(children: [
            buildSentence("Musica: ", bold: true),
            buildSentence("Musica e a droga mais poderosa que existe. Eu amo.")
          ],),
          new Row(children: [
            buildSentence("Altamente ecletico: samba, mpb, classica, rock, blues, jazz e +")
          ],),
          new Row(children: [
            buildSentence("Esportes: ", bold: true),
            buildSentence("Caminhada por hora")
          ],),
          new Row(children: [
            buildSentence("Esportes que gostaria de praticar ou voltar a praticar: ", bold: true)
          ],),
          new Row(children: [
            buildSentence("Caiaquismo, arquearia, escalada indoor, natacao")
          ],),
          new Row(children: [
            buildSentence("Aspiracao profissional: ", bold: true),
            buildSentence("Business Analyst, Gestao Digital")
          ],),
          new Row(children: [
            buildSentence("Hobby: ", bold: true),
            buildSentence("Analise de dados")
          ],)
        ],
      )
    );
  }

  Widget projectDescriptionPage() {
    return Center(
      child: new Row(children: [
        new Column(children: [
          new Row(children: [
            Image.asset('assets/images/baruk.jpg',
             height: 150,
             fit: BoxFit.fitHeight
           )
          ],),
          new Row(children: [
            Image.asset('assets/images/museu.jpg',
             height: 200,
             fit: BoxFit.fitHeight
           )
          ],),
          new Row(children: [
            Image.asset('assets/images/jardin-japones.jpg',
             height: 200,
             fit: BoxFit.fitHeight
           )
          ],)
        ])
      ],)
    );
  }

  Widget randomPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          new Row(children: [
            buildSentence("Tema: ", bold: true),
            buildSentence("Urna Eletronica")
          ],),
          new Row(children: [
            buildSentence(" ")
          ],),
          new Row(children: [
            buildSentence("Dados armazenados no servidor: ", bold: true)
          ],),
          new Row(children: [
            buildSentence("Candidatos e foto dos candidatos")
          ],),
          new Row(children: [
            buildSentence(" ")
          ],),
          new Row(children: [
            buildSentence("Dados armazenados no celular", bold: true)
          ],),
          new Row(children: [
            buildSentence("Colinha com os candidatos que vai escolher")
          ],)
        ],
      )
    );
  }
}
