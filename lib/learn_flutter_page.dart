import 'dart:ffi';

import 'package:beginner/home_page.dart';
import 'package:beginner/main.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool switchValue = false;
  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_time_rounded),
            ),
          ],
          title: const Text("Learn Flutter"),
          // Make this true to use the default back button
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        // SingleChildScrollView makes this body scrollable !!
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/einstein.jpg",
                height: 300,
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.lightBlue,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "This is text",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        switchValue ? Colors.red : Colors.amberAccent),
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined Button"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Text Button"),
              ),
              GestureDetector(
                // This will make onTap function to be activated for any place
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint("Hello");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.red,
                    ),
                    Text("Row Widget"),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Switch(
                  value: switchValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      switchValue = newValue;
                    });
                  }),
              Checkbox(
                  value: checkBoxValue,
                  onChanged: (bool? newValue) {
                    setState(() {
                      checkBoxValue = newValue;
                    });
                  }),
              Image.network(
                  "https://hips.hearstapps.com/hmg-prod/images/isaac_newton_1689_painting_sir_godfrey_kneller_public_domain_via_wikimedia_commons.jpg?crop=1xw:0.75xh;center,top&resize=1200:*")
            ],
          ),
        ));
  }
}
