import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: myApp(),
      ),
    ),
  );
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(context) {
    return Container(
      color: const Color.fromARGB(255, 77, 7, 255),
      child: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the column vertically
          children: [
            Image.asset(
              'assests/images/home.png',
              width: 300,
              color:const Color.fromARGB(202, 255, 255, 255),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50), // Apply top margin of 100
              child: Text(
                "Learn Flutter The Fun Way!",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), // Add border
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize:
                        MainAxisSize.min, // Ensure the row takes minimum space
                    children: [
                      IconButton(
                        icon:
                            const Icon(Icons.arrow_forward, color: Colors.white),
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                      ),
                      const Padding(
                        padding:  EdgeInsets.only(right: 20),
                        child:  Text(
                          "Start quiz",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //-===========================
          ],
        ),
      ),
    );
  }
}
