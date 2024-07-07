import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pick and go  Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pick and go  Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Loempia
  int kipLoempiaPieces = 0;
  var kipLoempiaPortion = 0;

// Gyoza
  var gyozaPortion = 0;
  var gyozaPieces = 0;

  var gyozaPortionApple = 0;
  var gyozaPortionVegatarian = 0;

  var gyozaPiecesApple = 0;
  var gyozaPiecesVegetarian = 0;

  var ebiPortion = 0;
  var ebiPieces = 0;

  var senseiSnackBoxPortion = 0;
  var senseiSnackBoxPieces = 0;

  var yakitoriSpiesjesPortion = 0;
  var yakitoriSpiesjesPieces = 0;
  var edammePortion = 0;
  var edammePieces = 0;

  @override
  Widget build(BuildContext context) {
    //  TODO Delete this later
    // var gyoza = "1 portie";
    // var ebi = "1 portie Ebi";
    // var senseiSnackBox = "1 Sensei Snack Box";
    // var yakitoriSpiesjes = "1  portie Yakitori spiesjes";
    // var Edamame = 0.5;

// var  yakitoriStuks =

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                //1ste
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kipLoempiaPieces += 3;
                        kipLoempiaPortion++;
                      });
                    },
                    child: Text("kip Loempia")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // TODO Fix this one later
                        senseiSnackBoxPortion;
                        senseiSnackBoxPieces;
                      });
                    },
                    child: Text("Sensei Snack Box")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        yakitoriSpiesjesPieces += 3;
                        yakitoriSpiesjesPortion++;
                      });
                    },
                    child: Text("Yakitori spiesjes")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Gebakken banaan")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ebiPieces += 3;
                        ebiPortion++;
                      });
                    },
                    child: Text(" Ebi tempura")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        gyozaPieces += 5;
                        gyozaPortion++;
                      });
                    },
                    child: Text("Gyoza")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        gyozaPortionApple += 5;
                        gyozaPiecesApple++;
                      });
                    },
                    child: Text("Gyoza Vegatarisch")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        gyozaPiecesApple += 5;
                        gyozaPortionApple++;
                      });
                    },
                    child: Text("Gyoza appel")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Vegatarisch Loempia")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text(" Edamame")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // edammePieces += 0.5;
                        edammePortion++;
                      });
                    },
                    child: Text("Spicy Edamame")),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  print(
                      'pak zoveel  Kip loempias :  $kipLoempiaPieces   in porties:  $kipLoempiaPortion , Edamame : $edammePortion,  Gyoza : $gyozaPieces portion: $gyozaPortion,  Ebi : $ebiPieces Portion: $ebiPortion,  Sensei Snack Box : $senseiSnackBoxPieces Portion: $senseiSnackBoxPortion,  Yakitori spiesjes : $yakitoriSpiesjesPieces Portion: $yakitoriSpiesjesPortion');
                },
                child: Text("Result")),
            // Text("Kip Loempia stuks: $kipLoempiaPieces"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hoeveel je moet pakken van alles"),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                Text("Kip Loempia stuks: $kipLoempiaPieces"),
                Text("Kip Loempia porties: $kipLoempiaPortion"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
