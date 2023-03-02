import 'package:beginner/first_screen.dart';
import 'package:beginner/second_screen.dart';
import 'package:beginner/third_screen.dart';
import 'package:flutter/material.dart';

class TabbedViewMainPage extends StatefulWidget {
  const TabbedViewMainPage({Key? key}) : super(key: key);

  @override
  State<TabbedViewMainPage> createState() => _TabbedViewMainPageState();
}

class _TabbedViewMainPageState extends State<TabbedViewMainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tabbed View",
            ),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.directions_bus)),
            ]),
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body: const TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen()
            ],
          ),
        ));
  }
}
