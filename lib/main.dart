import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo animated_rail'),
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.purpleAccent,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeIn,
        height: 70,
        index: 2,
        items: [
          Icon(Icons.home_outlined,size: 30,color: Colors.black,),
          Icon(Icons.search_outlined,size: 30,color: Colors.black,),
          Icon(Icons.add,size: 30,color: Colors.black,),
          Icon(Icons.bookmark_border_outlined,size: 30,color: Colors.black,),
          Icon(Icons.person_add,size: 30,color: Colors.black,),

        ],
        onTap: (index){
          print("$index");
        },
      ),
      body: Container(
      ),
    );
  }
}
