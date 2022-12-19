import 'package:flutter/material.dart';

class SpaceDetail extends StatefulWidget {
  const SpaceDetail({super.key});

  @override
  State<SpaceDetail> createState() => _SpaceDetailState();
}

class _SpaceDetailState extends State<SpaceDetail>
    with SingleTickerProviderStateMixin {
  bool isClicked = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
          Stack(clipBehavior: Clip.antiAliasWithSaveLayer, children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.sciencealert.com/images/2018-01/Juno201810.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 80,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "DISCOVER THE INFINITE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "OF THE UNIVERSE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
        Positioned(
            top: 200,
            bottom: 0,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isClicked = !isClicked;
                            index = 1;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                              color: (isClicked && index == 1)
                                  ? Colors.white
                                  : Colors.black,
                              width: 2.0,
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/b/planet-jupiter-dark-background-elements-image-were-furnished-nasa-planet-jupiter-dark-background-elements-157109337.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Mars",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isClicked = !isClicked;
                            index = 2;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/3/30/Mercury_in_color_-_Prockter07_centered.jpg"),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: (isClicked && index == 2)
                                  ? Colors.white
                                  : Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Mercury",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      InkWell(
                        onTap: (() {
                          isClicked = !isClicked;
                          index = 3;
                          setState(() {});
                        }),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1),
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.mos.cms.futurecdn.net/RifjtkFLBEFgzkZqWEh69P.jpg"),
                              fit: BoxFit.cover,
                            ),
                            border: Border.all(
                              color: (isClicked && index == 3)
                                  ? Colors.white
                                  : Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Venus",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBalFRIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--876c727b183497f316736c122d0cbbddb9e2ac4f/earth_dscovr_apr19_med.jpg?disposition=attachment"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Earth",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBZ0FTIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--d91c8056b0a4c3cd4cf6bcd3f7e6eda669270678/stsci-h-p1936a_1800.jpg?disposition=attachment"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Jupiter",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBZ2NTIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--381c53bc39247134629366ca6731e1ca801c7473/stsci-h-p1943a-f_1200.jpg?disposition=attachment"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Saturn",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBb0pWIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--617c012cd97ff5ed9d417da5ecae8275903a5cae/carousel_neptune_1.jpg?disposition=inline"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Neptune",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbUFEIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--819271cfad7a01a6b9467d91dc5843695a73337c/PIA18182.jpg?disposition=attachment"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Uranus",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )),
        Positioned(
            bottom: 140,
            left: 10,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Mars",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Mars is the fourth planet from the Sun and \n"
                    "the second-smallest planet in the Solar\n"
                    "System, only being larger than Mercury. \n"
                    "In the English language, Mars is named for \n"
                    "he Roman god of war. ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ])),
        Positioned(
            bottom: 60,
            left: 10,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home, color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                const Icon(
                  Icons.cell_tower,
                  color: Colors.white,
                  size: 30,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ))
      ]),
    );
  }
}
