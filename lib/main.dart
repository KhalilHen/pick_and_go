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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var kipLoempiaPressed;
                      print(kipLoempia);
                    },
                    child: Text("kip Loempia")),
                ElevatedButton(onPressed: null, child: Text("Edamame")),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Result")),
          ],
        ),
      ),
    );
  }
}
