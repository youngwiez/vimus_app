import 'package:flutter/material.dart';

class VimusDrawer extends StatelessWidget {
  const VimusDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          /// Vimus Logo
          DrawerHeader(
              child: Center(
                child: Text(
                  'Vimus',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )
          ),

          /// Setting
          Padding(
            padding: EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
            )
          ),

          /// Version
          Padding(
              padding: EdgeInsets.only(left: 25.0, top: 0),
              child: ListTile(
                title: const Text("Version"),
                leading: const Icon(Icons.info_outline_rounded),
              )
          ),
        ],
      )
    );
  }
}