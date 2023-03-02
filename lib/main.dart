import 'package:beginner/home_page.dart';
import 'package:beginner/learn_flutter_page.dart';
import 'package:beginner/profile_page.dart';
import 'package:beginner/tabbed_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  var currentPage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage(), TabbedViewPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating action button");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.paid), label: 'label')
        ],
        onDestinationSelected: (value) {
          // Change the state for refresh the widget
          setState(() {
            currentPage = value;
          });
        },
        selectedIndex: currentPage,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,

              ),
              child: Text(
                'My App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Emails'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return const LearnFlutterPage();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                // TODO: Handle notifications tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () {
                // TODO: Handle friends tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Tasks'),
              onTap: () {
                // TODO: Handle tasks tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
