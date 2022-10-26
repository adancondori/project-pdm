import 'package:flutter/material.dart';

import 'screens/ListToys/detail.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListExample(),
    );
  }
}

class ListExample extends StatefulWidget {
  const ListExample({super.key});

  @override
  State<ListExample> createState() => _ListExampleState();
}

class _ListExampleState extends State<ListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Actividades')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Container(
        // verde
        color: Colors.white,
        child: SingleChildScrollView(
          // negro sirve para hacer SCROLL
          child: Column(
            // amarillo
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 1",
                  "1 review · 5 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 2",
                  "2 review · 5 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
              Opinion(
                  "lib/assets/icon.png",
                  "Hola mundo 3",
                  "2 review · 2 photos",
                  "There is an amazing place in Sri Lanka"),
            ],
          ),
        ),
      ),
    );
  }
}

class Opinion extends StatefulWidget {
  String pathImage = "asset/img/people.jpg";
  String name = "Test Title";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Opinion(this.pathImage, this.name, this.details, this.comment, {super.key});

  @override
  State<Opinion> createState() => _OpinionState();
}

class _OpinionState extends State<Opinion> {
  onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Detail("namePlace", 10, "descriptionPlace")),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        widget.comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        widget.details,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        widget.name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(widget.pathImage))),
    );

    return Container(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Row(
          children: <Widget>[photo, userDetails],
        ),
      ),
    );
  }
}
