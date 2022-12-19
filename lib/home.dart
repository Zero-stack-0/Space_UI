import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://solarsystem.nasa.gov/internal_resources/4204"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
            bottom: 300,
            left: 30,
            child: Text(
              "Space Exploration",
              style: TextStyle(color: Colors.white, fontSize: 30),
            )),
        Positioned(
            bottom: 190,
            left: 30,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Galaxies are categorized according to their visual",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "morphology as elliptical, spiral, or irregular. Many",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "galaxies are thought to have supermassive black",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "holes at their centers.",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            )),
        Positioned(
            bottom: 90,
            left: 30,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/Space');
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white),
                height: 65,
                width: 250,
                child: const Text(
                  "Start Exploration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ))
      ]),
    );
  }
}
