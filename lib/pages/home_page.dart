import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/cooffe_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text("Find the best coffee for you",
                  style: GoogleFonts.bebasNeue(fontSize: 50, color: Colors.orange[400]),),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
              ],
            ))
          ],
        ));
  }
}
