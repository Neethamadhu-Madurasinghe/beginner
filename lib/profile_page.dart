import 'package:flutter/material.dart';

int itemCount = 100;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Item ${index + 1}"),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.adb),
            onTap: () {
              debugPrint("Clicked $index");
            },
          );
        });
  }
}
