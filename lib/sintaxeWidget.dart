import 'package:flutter/material.dart';

class MyFirstApp extends StatelessWidget {
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
                Center(child: generateUlissesView()),
                Center(child: generateSintaxeView()),
                Center(child: Text("Filho 3")),
              ])),
        ));
  }
}

Widget generateUlissesView() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 4)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/ulisses004.gif')),
        ),
        Text("Ulisses Martins Dias",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1))
      ],
    ),
  );

  //
}

Widget generateSintaxeView() {
  return Center(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Expanded(child: Text("Child1")),
      Text("Child1"),

      //Expanded(child: Text("Child2")),
      //Text("Child2"),
      //Padding(padding: EdgeInsets.all(30), child: Text("Child2")),
      // Transform.scale(scale: 2, child: Text("Child2")),

      /*Container(
                  transform: new Matrix4.identity()..scale(2.0),
                  padding: EdgeInsets.all(30),
                  child: Text("Child2")),
                  */

      /*ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 100),
                  child: FittedBox(fit: BoxFit.fill, child: Text("Child2"))),*/

      /*
              RotatedBox(quarterTurns: 3, child: Text("Child2")),*/

      /*
              SizedBox(width: 200, height: 400, child: Text("Child2")),
              */

      /*
              Expanded(child: Divider()),
              */

      Card(
          child: Column(
            children: [Text("InnerChild1"), Divider(), Text("InnerChild2")],
            mainAxisSize: MainAxisSize.min,
          ),
          color: Colors.blueAccent,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),

      //Expanded(child: Text("Child3"))
      Text("Child3")
    ],
  ));
}
