import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var images = 'assets/images/2.jpg';
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // if (index != 1) {
                        //   index--;
                        //   images = 'assets/images/${index}.jpg';
                        // } else {
                        //   index = 10;
                        //   images = 'assets/images/${index}.jpg';
                        // }
                        images = 'assets/images/${index-- % 10 + 1}.jpg';
                      });
                    },
                    child: Icon(Icons.skip_previous_rounded),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    images,
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // if (index != 10) {
                        //   index++;
                        //   images = 'assets/images/${index}.jpg';
                        // } else {
                        //   index = 1;
                        //   images = 'assets/images/${index}.jpg';
                        // }
                        images = 'assets/images/${index++ % 10 + 1}.jpg';
                      });
                    },
                    child: Icon(Icons.skip_next_rounded),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
