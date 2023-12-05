import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoogleMaps(),
                    ));
              },
              icon: SizedBox(
                height: 50,
                width: 50,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/2991/2991231.png",
                  scale: 20,
                ),
              )),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Google Maps",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
