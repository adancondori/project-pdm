import 'dart:ui';

import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  Detail(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: const EdgeInsets.only(top: 0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(top: 0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_fill = Container(
      margin: const EdgeInsets.only(top: 0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_start = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 0, left: 20.0, right: 20.0),
          child: const Text(
            "Duwili Test",
            style: TextStyle(
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star_fill,
            star_fill,
            star_half,
            star_half,
            star_border
          ],
        )
      ],
    );

    final description = Container(
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sed ligula vel tellus luctus pharetra malesuada a lorem. In cursus, neque at pretium auctor, urna ante viverra arcu, sed elementum libero tortor a dolor. Vestibulum lorem neque, sagittis vel vehicula vitae, condimentum ac est. Sed molestie arcu eu feugiat semper. Fusce nisi diam, tempor a enim ut, vulputate commodo elit. Nam accumsan, nisi id laoreet viverra, quam urna congue mi, vel placerat tellus nisl non elit. Cras sed nisl velit. Quisque lacus nisl, ornare ut lobortis et, auctor a tellus. Nullam a ullamcorper velit. Nam semper pharetra ligula in volutpat. Aenean at ante id purus ultrices sollicitudin. Donec et condimentum orci. Curabitur in porttitor mauris, eget accumsan leo. Donec faucibus orci nec nisl finibus fringilla. Maecenas quis euismod purus. Aliquam varius erat lectus, in lobortis leo gravida tempus.",
            style: TextStyle(
                fontSize: 12, fontFamily: 'Oleo', color: Colors.black)));

    return Scaffold(
      appBar: AppBar(title: const Text('Actividades')),
      body: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.only(top: 50, right: 3.0),
          child: Column(
            children: [title_start, description],
          ),
        ),
      ),
    );
  }
}
