import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CharacterScreen(),
    );
  }
}

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text(
          "My favorite character",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          CharacterCard(
            name: "Tom",
            imageUrl: "https://m.media-amazon.com/images/S/pv-target-images/e9db53412f90fc4cd839b8d5f38a3ae68fa9f3afdb42b6b664c2f398d2673a69._SX1080_FMjpg_.jpg",
          ),
          CharacterCard(
            name: "Jerry",
            imageUrl: "https://des98fz5jsos4.cloudfront.net/boomerang/dynamic/character/00000000/22/81ee5f02d788ef9970dd5d0e4ae330f1a08de0e8_1599826038.jpg",
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Anime: Tom and Jerry",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CharacterCard({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Colors.blueGrey,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Image.network(
          imageUrl,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
