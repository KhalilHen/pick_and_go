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
  int kipLoempiaPressed = 0;

  @override
  Widget build(BuildContext context) {
    var gyoza = "1 portie";
    var ebi = "1 portie Ebi";
    var senseiSnackBox = "1 Sensei Snack Box";
    var yakitoriSpiesjes = "1  portie Yakitori spiesjes";

    var kipLoempia = 3;
    var Edamame = 0.5;

// var  yakitoriStuks =

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
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
                        kipLoempiaPressed += 3;
                      });

                      print(kipLoempia);

                      print(kipLoempiaPressed);
                    },
                    child: Text("kip Loempia")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // kipLoempiaPressed += 3;
                      });

                      print(kipLoempia);

                      print(kipLoempiaPressed);
                    },
                    child: Text("Sensei Snack Box")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kipLoempiaPressed += 3;
                      });

                      print(kipLoempia);

                      print(kipLoempiaPressed);
                    },
                    child: Text("Yakitori spiesjes")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kipLoempiaPressed += 3;
                      });

                      print(kipLoempia);

                      print(kipLoempiaPressed);
                    },
                    child: Text("Gebakken banaan")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kipLoempiaPressed += 3;
                      });
                    },
                    child: Text(" Ebi tempura")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        kipLoempiaPressed += 3;
                      });

                      print(kipLoempia);

                      print(kipLoempiaPressed);
                    },
                    child: Text("Gyoza")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text("Gyoza Vegatarisch")),

                ElevatedButton(
                    onPressed: () {
                      setState(() {});
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
                      setState(() {});
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
                      'pak zoveel  Kip loempias :  $kipLoempiaPressed/porties:  , Edamame : $Edamame,  Gyoza : $gyoza,  Ebi : $ebi,  Sensei Snack Box : $senseiSnackBox,  Yakitori spiesjes : $yakitoriSpiesjes');
                },
                child: Text("Result")),
          ],
        ),
      ),
    );
  }
}
