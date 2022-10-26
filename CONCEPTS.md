# project_pdm

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Tutorial

## Tips 
stful --> Crea un widget StateFulWidget, pidiendo el nombre.

stless --> Crea un widget StatelessWidget, pidiendo el

## Command line
 flutter create my_app
 cd my_app
 flutter analyze
 flutter test
 flutter run
 flutter run lib/main.dart
 flutter pub get
 flutter pub outdated
 flutter pub upgrade
 flutter doctor

 - [Doc: Flutter](https://docs.flutter.dev/reference/flutter-cli)
    

## Arquitecture Software


## Example 1 Create List and detail

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
    /*
    return Scaffold(
      appBar: AppBar(title: const Text('Actividades')),
      body: Visibility(
        visible: true,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Opinion(
                "lib/assets/icon.png",
                "Hola mundo 1",
                "1 review · 5 photos",
                "There is an amazing place in Sri Lanka");
          },
        ),
      ),
    );
    */

    return Scaffold(
      appBar: AppBar(title: const Text('Actividades')),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
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
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        widget.name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
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
// --------------------------------------------------------------------


## Drawer menu

https://docs.flutter.dev/cookbook/design/drawer