import 'package:flutter/material.dart';
import 'package:tpm_6_azdan/tabs/home_tab.dart';
import 'package:tpm_6_azdan/tabs/settings_tab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  var index = 0;
  final tabScreens = [
    const HomeTab(),
    const SettingsTab()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
        title: const Text('MaterialApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: tabScreens[index],
      backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
      drawer: Drawer(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        selectedItemColor: const Color.fromRGBO(103, 249, 212, 1),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}