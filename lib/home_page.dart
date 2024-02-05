import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:main_project/api_key.dart';
import 'globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// maptoolkit.p.rapidapi.com/staticmap/?maptype=terrain&size=640x480&center=$lat,$lng&zoom=18&marker=center:$lat,$lng|anchor:bottom&rapidapi-key=$RapidAPI-Key
  final lat = '10.55064988168991';
  final lng = '76.22298099120178';

  // https://maptoolkit.p.rapidapi.com/staticmap/?maptype=terrain&size=480x640&center=10.55064988168991,76.22298099120178&zoom=16&marker=center:10.55064988168991,76.22298099120178|anchor:bottom&rapidapi-key=f4fd6fb59bmshcb4ec42beb8f554p1f8bb7jsn030ee32b48a5

  // Future<void> getLocation() async {
  //   try {
  //     final res = await http.get(Uri.parse(
  //         'https://maptoolkit.p.rapidapi.com/staticmap/?maptype=terrain&size=480x580&center=$lat,$lng&zoom=16&marker=center:$lat,$lng|anchor:bottom&rapidapi-key=$rapidAPIKey'));
  //     setState(() {
  //       Uint8List imageBytes = res.bodyBytes;
  //       globals.img = Image.memory(imageBytes);
  //       globals.isAccess = false;
  //       print('api fetched');
  //     });
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  @override
  // void initState() {
  //   if (globals.isAccess) {
  //     getLocation();
  //   }
  //   {
  //     super.initState();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        title: const Text(
          'Track Bike',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),

        //comment from here when ready

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                height: 452,
                width: 405,
                child: Card(
                  elevation: 7,
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Image.asset(
                    'assets/project_map.png',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.location_on_outlined),
            )
          ],
        ),

        //comment till here when ready

        //comment from here after testing
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       SizedBox(
        //         height: 452,
        //         width: 405,
        //         child: Card(
        //           elevation: 7,
        //           clipBehavior: Clip.hardEdge,
        //           margin: const EdgeInsets.only(left: 15, right: 15),
        //           child: (globals.img),
        //         ),
        //       ),
        //       //   );
        //       // },
        //       // ),
        //       FloatingActionButton(
        //         onPressed: () {
        //           globals.isAccess = true;
        //           getLocation();
        //         },
        //         child: const Icon(Icons.location_on_outlined),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
