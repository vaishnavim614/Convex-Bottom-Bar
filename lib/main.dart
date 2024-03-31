import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Fav.dart';
import 'Search.dart';
import 'Profile.dart';

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
      home: MyHomePage(title: 'Flutter Convex Bottom Bar'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.title}) : super(key: key);
  //
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  int selectedPage = 0;
  final _pageOptions = [Home(),  Fav(),Search(), Profile()];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(

        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite, title: 'Favorites'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i ){
          setState(() {
            selectedPage = i;
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}