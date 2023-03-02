import 'package:beginner/tabbed_view_main_page.dart';
import 'package:flutter/material.dart';

import 'learn_flutter_page.dart';

class TabbedViewPage extends StatefulWidget {
  const TabbedViewPage({Key? key}) : super(key: key);

  @override
  State<TabbedViewPage> createState() => _TabbedViewPageState();
}

class _TabbedViewPageState extends State<TabbedViewPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return const TabbedViewMainPage();
          }));
        },
        child: const Text("Go to tabbed view page"),
      ),
    );
  }
}
