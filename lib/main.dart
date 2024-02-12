import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ESP Balochistan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ESP Balochistan'),
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
    return Scaffold(
      // appBar: AppBar(

      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      //   title: Text(widget.title),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          image: const DecorationImage(
            image: NetworkImage(
                'https://www.unicef.org/pakistan/sites/unicef.org.pakistan/files/styles/hero_extended/public/UN0802726%20%281%29.jpg.webp?itok=7m-YbVQZ'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.36,
              height: double.infinity,
              color: Colors.black.withAlpha(70),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'ESP \nBalochistan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 49, 49, 49),
                        shadows: [
                          Shadow(
                              // bottomLeft
                              offset: Offset(-1.0, -1.0),
                              color: Colors.white),
                          Shadow(
                              // bottomRight
                              offset: Offset(1.0, -1.0),
                              color: Colors.white),
                          Shadow(
                              // topRight
                              offset: Offset(1.0, 1.0),
                              color: Colors.white),
                          Shadow(
                              // topLeft
                              offset: Offset(-1.0, 1.0),
                              color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                    const Text(
                      'Website \nUnder Construction',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 49, 49, 49),
                        shadows: [
                          Shadow(
                              // bottomLeft
                              offset: Offset(-0.5, -0.5),
                              color: Colors.white),
                          Shadow(
                              // bottomRight
                              offset: Offset(0.5, -0.5),
                              color: Colors.white),
                          Shadow(
                              // topRight
                              offset: Offset(0.5, 0.5),
                              color: Colors.white),
                          Shadow(
                              // topLeft
                              offset: Offset(-0.5, 0.5),
                              color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
