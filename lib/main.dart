import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Container deneme alanı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // color: Colors.cyan[600],
        transform: Matrix4.rotationZ(0.2),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(30),
        width: 350,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.cyan.shade600,
          borderRadius: BorderRadius.circular(6),
        ),
        child: const Center(
          child: Text(
            'Karizmatik olması gereken yazı',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
